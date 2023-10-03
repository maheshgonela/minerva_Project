import 'dart:convert';

import 'package:base_auth/base_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/core/query_helper.dart';
import 'package:minerva/features/grn/data/modal/ordered_product_dto.dart';
import 'package:minerva/features/grn/data/modal/purchase_order_dto.dart';
import 'package:minerva/features/grn/domain/entities/grn_item_ui_model.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';
import 'package:minerva/features/grn/domain/entities/purchase_order.dart';
import 'package:dartz/dartz.dart';
import 'package:minerva/features/grn/domain/repository/grn_repository.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

@LazySingleton(as: GRNRepository)
class GRNRepoImpl with AuthHelper, QueryHelper implements GRNRepository {
  final http.Client client;

  GRNRepoImpl(this.client);

  @override
  Future<Either<Failure, List<PurchaseOrder>>> fetchPurchaseOrder(
      int start, int end, String? query) async {
    const defErrMsg = 'could not fetch orders';
    try {
      final user = sl.get<LoggedInUser>();
      const entityName = Entities.purchaseOrder;
      //final DateTime yesterday =
      //  DateTime.now().subtract(const Duration(days: 10));
      // final DateFormat formatter = DateFormat('yyyy-MM-dd');
      // final String yesterdayDate = formatter.format(yesterday);
      // final filters =
      //     "documentStatus='CO' and salesTransaction=false and date(orderDate)>=date('$yesterdayDate') and organization='${user.defaultOrganization}'";
      final filters =
          "documentStatus='CO' and salesTransaction=false and organization='${user.defaultOrganization}'";
      final url =
          "${Constants.jsonWs}/$entityName?_where=$filters&_startRow=$start&_endRow=$end&_sortBy=creationDate desc";
      print("purchaseOrder $url");
      final authHeader = _authHeader();

      final recivedData = await safeApiCall(() {
        return client.get(Uri.parse(url), headers: authHeader);
      }, defErrMsg);
      return recivedData.fold((l) {
        return left(const Failure(error: defErrMsg));
      }, (r) {
        final resultList = r as List<dynamic>;
        final allRequestDetails = resultList.map((element) {
          return PurchaseOrderDto.fromJson(element as Map<String, dynamic>)
              .toDomain();
        }).toList();
        return right(allRequestDetails);
      });
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  String _nameSearchCondition(String? query) {
    if (query == null || query.trim().isEmpty) return "";

    final String trimmed = query.trim();
    return "(lower(documentNo) LIKE lower('%25$trimmed%25'))";
  }

  @override
  Future<Either<Failure, List<OrderedProduct>>> fetchOrderedProducts(
      int start, int end, String purchaseOrderId) async {
    const defErrMsg = 'could not fetch products';
    try {
      final list = await _fetchOrderPendingProducts(purchaseOrderId, defErrMsg);

      list.sort((p1, p2) => p1.productName.compareTo(p2.productName));

      return right(list);
    } catch (e, st) {
      print("purchaseOrderId $purchaseOrderId");
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  Future<List<OrderedProduct>> _fetchOrderPendingProducts(
      String orderId, String defErrMsg) async {
    final products = await fetchQueryResponse(
        Constants.prefDispatchProductsQuery,
        placeholders: {'order_id': orderId});

    return products
        .map((e) =>
            OrderedProductDto.fromJson(e as Map<String, dynamic>).toDomain())
        .toList();
  }

  @override
  Future<Either<Failure, bool>> createGrn(
      PurchaseOrder order, List<GrnItemUiModel> products) async {
    const String defErrMsg = 'Could not create grn';
    String? goodsReceiptId;
    try {
      final receiptId = await _createGoodsReceipt(order);
      if (receiptId.isEmpty) return left(const Failure(error: defErrMsg));
      goodsReceiptId = receiptId;

      await _addGoodsReceiptLines(receiptId, order.warehouse, products);
      await _completeGoodsReceipt(receiptId);

      const String url = "${Constants.jsonWs}/${Entities.orderedProducts}";
      final String reqBody = jsonEncode({
        'data': [
          ...products.map((e) => {
                '_entityName': Entities.orderedProducts,
                'id': e.product.id,
                'samDispatchqty': 0,
              })
        ]
      });

      final data = await safeApiCall(
        () =>
            client.post(Uri.parse(url), body: reqBody, headers: _authHeader()),
        defErrMsg,
      );

      return data.fold(
        (l) => left(const Failure(error: defErrMsg)),
        (r) => right(true),
      );
    } catch (e, st) {
      if (goodsReceiptId != null) {
        _deleteGoodsReceipt(goodsReceiptId, defErrMsg);
      }

      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  Future<void> _deleteGoodsReceipt(
      String goodsReceiptId, String defErrMsg) async {
    try {
      final url = Uri.parse(
          '${Constants.jsonWs}/${Entities.goodsReceipt}/$goodsReceiptId');
      await safeApiCall(() => client.delete(url), defErrMsg);
    } catch (e1, st2) {
      logError(e1, st2, 'Could not delete goods receipt record');
    }
  }

  Future<String> _createGoodsReceipt(PurchaseOrder order) async {
    final url = Uri.parse("${Constants.jsonWs}/${Entities.goodsReceipt}");
    final today = DateFormat("yyyy-MM-dd").format(DateTime.now());
    final reqBody = json.encode({
      'data': {
        '_entityName': Entities.goodsReceipt,
        'documentType': '2030AD7DD4284E2B936E261662EF735A',
        'warehouse': order.warehouse,
        'businessPartner': order.businessPartner,
        'partnerAddress': order.businessPartnerLocation,
        'salesOrder': order.id,
        'movementDate': today,
        'accountingDate': today,
        "salesTransaction": "N"
      }
    });

    final result = await safeApiCall(
      () => client.post(url, body: reqBody, headers: _authHeader()),
      'Could not create goods receipt record',
    );

    return result.fold(
      (l) => '',
      (r) => ((r as List<dynamic>)[0] as Map<String, dynamic>)['id'] as String,
    );
  }

  Future<void> _addGoodsReceiptLines(
      String receiptId, String warehouse, List<GrnItemUiModel> products) async {
    final url = Uri.parse("${Constants.jsonWs}/${Entities.goodsReceiptLines}");

    final storageBinId = await _fetchStorageBinId(warehouse);
    if (storageBinId.isEmpty) {
      throw Exception('Could not fetch storage bin details');
    }

    var lineNo = 0;
    final reqBody = json.encode({
      'data': [
        ...products.where((element) => element.receivedQty > 0).map((e) {
          lineNo = lineNo + 10;
          return {
            '_entityName': Entities.goodsReceiptLines,
            'lineNo': lineNo,
            'organization': e.product.organization,
            'product': e.product.product,
            'uOM': e.product.uOM,
            'movementQuantity': e.receivedQty,
            'samDocumentqty': e.receivedQty,
            'storageBin': storageBinId,
            'shipmentReceipt': receiptId,
            'salesOrderLine': e.product.id,
          };
        })
      ]
    });

    final result = await safeApiCall(
      () => client.post(url, body: reqBody, headers: _authHeader()),
      'Could not add goods receipt lines',
    );

    if (result.isLeft()) {
      throw Exception('Could not add goods receipt lines');
    }
  }

  Map<String, String> _authHeader() {
    final user = sl.get<LoggedInUser>();
    return getAuthHeader(user.userName, user.password);
  }

  Future<String> _fetchStorageBinId(String warehouseId) async {
    final url = Uri.parse(
        "${Constants.jsonWs}/${Entities.storageBin}?_where=warehouse='$warehouseId'");
    final result = await safeApiCall(
      () => client.get(url, headers: _authHeader()),
      'Could not fetch storage bin id',
    );

    return result.fold(
      (l) => '',
      (r) {
        final list = r as List<dynamic>;
        return list.isEmpty
            ? ''
            : (list[0] as Map<String, dynamic>)['id'].toString();
      },
    );
  }

  Future<void> _completeGoodsReceipt(String receiptId) async {
    final url = Uri.parse(
        "${Constants.customWs}/${CustomWebservices.processGRNOrOrder}");
    final reqBody = json.encode({
      'data': {"OrderID": "", "MinoutID": receiptId}
    });

    final result = await safeApiCall(
      () => client.post(url, body: reqBody, headers: _authHeader()),
      'Could not complete goods receipt',
    );

    if (result.isLeft()) {
      throw Exception('Could not complete goods receipt');
    }
  }

  @override
  Future<Either<Failure, bool>> saveProductDispatchQty(
      String productId, double dispatchQty) async {
    const String defErrMsg = 'Could not update product dispatch qty';
    try {
      const String url = "${Constants.jsonWs}/${Entities.orderedProducts}";
      final String reqBody = jsonEncode({
        'data': {
          '_entityName': Entities.orderedProducts,
          'id': productId,
          'samDispatchqty': dispatchQty,
        }
      });

      final data = await safeApiCall(
        () =>
            client.post(Uri.parse(url), body: reqBody, headers: _authHeader()),
        defErrMsg,
      );

      return data.fold(
        (l) => left(const Failure(error: defErrMsg)),
        (r) => right(true),
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, bool>> checkProductValidity(
      String uniqueCode, String productCode) async {
    const String defErrMsg = 'Could not save record';
    try {
      final env = sl.get<Environment>();
      final FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference<Map<String, dynamic>> collection;

      if (env.name == Environment.dev) {
        collection = firestore.collection("dev_dispatch_products");
      } else if (env.name == Environment.prod) {
        collection = firestore.collection("dispatch_products");
      } else {
        collection = firestore.collection("test_dispatch_products");
      }

      final querySnapshot = await collection
          .where('unq_code', isEqualTo: uniqueCode)
          .where('product_code', isEqualTo: productCode)
          // .where('bp', isEqualTo: user.businessPartner)
          .get();
      final docs = querySnapshot.docs;

      if (docs.isEmpty) {
        return left(
            const Failure(error: 'Product not found in dispatched list'));
      }

      return right(true);
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }
}

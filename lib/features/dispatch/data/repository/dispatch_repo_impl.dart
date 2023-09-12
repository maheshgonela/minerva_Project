import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:base_auth/base_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/core/query_helper.dart';
import 'package:minerva/features/dispatch/data/modal/attachment_dto.dart';
import 'package:minerva/features/dispatch/data/modal/dispatch_ordered_product_dto.dart';

import 'package:minerva/features/dispatch/data/modal/sales_order_dto.dart';
import 'package:minerva/features/dispatch/data/modal/shop_dto.dart';
import 'package:minerva/features/dispatch/domain/entities/attachment.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_info_wrapper.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_item_ui_model.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatched_product_ui_model.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/domain/entities/shipment_ui_model.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/domain/entities/shop_dispatch_products.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:core/failures/failure.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

@LazySingleton(as: DispatchRepository)
class DispatchRepoImpl
    with AuthHelper, QueryHelper
    implements DispatchRepository {
  final http.Client client;

  DispatchRepoImpl(this.client);

  @override
  Future<Either<Failure, List<Shop>>> fetchShops(
      int start, int end, String? query) async {
    final user = sl.get<LoggedInUser>();
    const defErrMsg = 'could not fetch shops';

    try {
      final list = await fetchQueryResponse(Constants.prefDispatchShopsQuery,
          placeholders: {'org_id': user.defaultOrganization});
      print("hhh");
      final allRequestDetails = list.map((element) {
        return ShopDto.fromJson(element as Map<String, dynamic>).toDomain();
      }).toList();
      return right(allRequestDetails);
    } catch (e, st) {
      logError(e, st, defErrMsg);
      print("fff");
      //https://minerva.easycloud.co.in/openbravo1/ws/in.easycloud.commons.QueryService
      return left(Failure(error: e.toString()));
    }
  }

  Future<Either<Failure, ShopDispatchProducts>> _fetchDispatchOrderedProducts(
      String orderId, String section, bool fromDispatchSection) async {
    const defErrMsg = 'could not fetch products';
    try {
      final orderedProducts = await _fetchOrderProducts(orderId, defErrMsg);
      final shipments = await _fetchShipments(orderedProducts, orderId, section,
          fromDispatchSection: fromDispatchSection);

      final shopDispatchProducts = ShopDispatchProducts(
        pending: orderedProducts,
        shipped: shipments,
      );

      return right(shopDispatchProducts);
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  Future<List<DispatchOrderedProduct>> _fetchOrderProducts(
      String orderId, String defErrMsg) async {
    const entityName = Entities.orderedProducts;
    final filters = "salesOrder='$orderId'";
    final url =
        "${Constants.jsonWs}/$entityName?_where=$filters&'_sortBy=product\$_identifier'";

    final authHeader = _authHeader();

    final data = await safeApiCall(
        () => client.get(Uri.parse(url), headers: authHeader), defErrMsg);
    return data.fold(
      (l) => [],
      (r) {
        final resultList = r as List<dynamic>;
        final allRequestDetails = resultList.map((element) {
          return DispatchOrderedProductDto(
                  id: element['id'] as String,
                  organization: element['organization'] as String,
                  product: element['product'] as String,
                  productCode: '',
                  productCategory: '',
                  subCategory: '',
                  productName: element['product\$_identifier'] as String,
                  uOM: element['uOM'] as String,
                  uOMName: element['uOM\$_identifier'] as String,
                  pendingQty: element['samPendingqty'].toString(),
                  orderedQuantity: element['orderedQuantity'].toString(),
                  dispatchQty: element['samDispatchqty'].toString())
              .toDomain();
        }).toList();
        return allRequestDetails;
      },
    );
  }

  Future<List<ShipmentUiModel>> _fetchShipments(
    List<DispatchOrderedProduct> originalProducts,
    String salesOrderId,
    String section, {
    bool fromDispatchSection = true,
  }) async {
    const defErrMsg = "Could not fetch shipments";
    const entityName = Entities.goodsReceipt;
    final today = DateFormat("yyyy-MM-dd").format(DateTime.now());
    var filters = "salesOrder='$salesOrderId' and movementDate='$today'";
    if (fromDispatchSection) {
      filters += " and (gstTripdata LIKE '%\"section\":\"$section\"%')";
    }
    final url =
        "${Constants.jsonWs}/$entityName?_where=$filters&_sortBy=creationDate";

    final authHeader = _authHeader();

    final data = await safeApiCall(
        () => client.get(Uri.parse(url), headers: authHeader), defErrMsg);
    return await data.fold(
      (l) => [],
      (r) async {
        final resultList = r as List<dynamic>;
        final allRequestDetails = Future.wait(resultList.map((element) async {
          final map = element as Map<String, dynamic>;
          final shipmentId = map['id'] as String;
          final list = await _fetchDispatchedProducts(
              originalProducts, shipmentId, defErrMsg);

          final desc = (map['gstTripdata'] ?? '') as String;
          String dispatcher = '';
          final String driver = (map['gstDriver'] ?? '') as String;
          if (desc.isNotEmpty) {
            final decoded = jsonDecode(desc) as Map<String, dynamic>;
            dispatcher = decoded['dispatcher'] as String;
          }

          return ShipmentUiModel(
            shipmentId: map['id'].toString(),
            products: list,
            sender: map['gstSender']?.toString() ?? '',
            driver: driver,
            vehicleNumber: map['gstVehicleno']?.toString() ?? '',
            creationDate: getFriendlyDate(map['creationDate'] as String),
          );
        }).toList());
        return allRequestDetails;
      },
    );
  }

  Future<List<DispatchedProductUiModel>> _fetchDispatchedProducts(
      List<DispatchOrderedProduct> originalProducts,
      String shipmentId,
      String defErrMsg) async {
    const entityName = Entities.goodsReceiptLines;
    final filters = "shipmentReceipt='$shipmentId'";
    final url =
        "${Constants.jsonWs}/$entityName?_where=$filters&'_sortBy=product\$_identifier'";

    final authHeader = _authHeader();

    final data = await safeApiCall(
        () => client.get(Uri.parse(url), headers: authHeader), defErrMsg);
    return data.fold(
      (l) => [],
      (r) {
        final resultList = r as List<dynamic>;
        final allRequestDetails = resultList.map((element) {
          final map = element as Map<String, dynamic>;

          return DispatchedProductUiModel(
            productName: map['product\$_identifier'] as String,
            orderedQty:
                _getOrderedQuantity(originalProducts, map['product'] as String),
            dispatchedQty: double.parse(map['movementQuantity'].toString()),
          );
        }).toList();
        return allRequestDetails;
      },
    );
  }

  double _getOrderedQuantity(
      List<DispatchOrderedProduct> orderedProducts, String productId) {
    final list = orderedProducts
        .where((element) => element.product == productId)
        .toList();
    return double.parse(list[0].orderedQuantity);
  }

  @override
  Future<Either<Failure, String>> createDispatch(
    List<DispatchInfoWrapper> orderInfo,
    String section,
    String driver,
    String vehicleNumber,
    String sender,
  ) async {
    const String defErrMsg = 'Could not create dispatch';
    String? goodsReceiptId;
    try {
      final receiptId = await _createGoodsReceipt(
          orderInfo, section, driver, vehicleNumber, sender);
      if (receiptId.isEmpty) return left(const Failure(error: defErrMsg));
      goodsReceiptId = receiptId;

      final lines = orderInfo
          .map((e) => e.dispatchItems)
          .reduce((value, element) => [...value, ...element]);

      await _addGoodsReceiptLines(
          receiptId, orderInfo[0].order.warehouse, lines);
      await _completeGoodsReceipt(receiptId);

      final String url = "${Constants.jsonWs}/${Entities.orderedProducts}";
      final String reqBody = jsonEncode({
        'data': [
          ...lines.map((e) => {
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
        (r) => right(goodsReceiptId!),
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

  Future<String> _createGoodsReceipt(
      List<DispatchInfoWrapper> orders,
      String section,
      String driver,
      String vehicleNumber,
      String sender) async {
    final user = sl.get<LoggedInUser>();
    final url = Uri.parse("${Constants.jsonWs}/${Entities.goodsReceipt}");
    final today = DateFormat("yyyy-MM-dd").format(DateTime.now());
    final String docTypeUrl = "${Constants.jsonWs}/${Entities.preference}?"
        "_where=attribute='${Constants.prefGoodsShipmentDocType}'&_selectedProperties=searchKey";

    final docTypeResult = await safeApiCall(
      () => client.get(Uri.parse(docTypeUrl), headers: _authHeader()),
      'Could not fetch shipment doc type',
    );

    final list = docTypeResult.getOrElse(() => []);
    final order = orders[0].order;

    final reqBody = json.encode({
      'data': {
        '_entityName': Entities.goodsReceipt,
        'documentType': list[0]['searchKey'],
        'warehouse': order.warehouse,
        if (orders.length > 1) 'salesOrder': orders[0].order.id,
        'businessPartner': order.businessPartner,
        'partnerAddress': order.businessPartnerLocation,
        'movementDate': today,
        'accountingDate': today,
        'salesTransaction': 'Y',
        'gstDriver': driver,
        'gstSender': sender,
        'gstVehicleno': vehicleNumber,
        'gstTripdata': jsonEncode({
          'section': section,
          'dispatcher': user.userName,
        })
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

  Future<void> _addGoodsReceiptLines(String receiptId, String warehouse,
      List<DispatchItemUiModel> products) async {
    final url = Uri.parse("${Constants.jsonWs}/${Entities.goodsReceiptLines}");

    final storageBinId = await _fetchStorageBinId(warehouse);
    if (storageBinId.isEmpty) {
      throw Exception('Could not fetch storage bin details');
    }

    var lineNo = 0;
    final reqBody = json.encode({
      'data': [
        ...products.where((element) => element.dispatchedQty > 0.0).map((e) {
          lineNo = lineNo + 10;
          return {
            '_entityName': Entities.goodsReceiptLines,
            'lineNo': lineNo,
            'organization': e.product.organization,
            'product': e.product.product,
            'uOM': e.product.uOM,
            'movementQuantity': e.dispatchedQty,
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

  @override
  Future<Either<Failure, List<SalesOrder>>> fetchSalesOrder(
      int start, int end, String businessPartnerId) async {
    const defErrMsg = 'could not fetch orders';
    try {
      final user = sl.get<LoggedInUser>();
      const entityName = Entities.purchaseOrder;
      final DateTime yesterday =
          DateTime.now().subtract(const Duration(days: 1));
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      final String yesterdayDate = formatter.format(yesterday);
      final filters =
          "documentStatus='CO' and businessPartner='$businessPartnerId' and salesTransaction=true and date(orderDate)>=date('$yesterdayDate') and organization='${user.defaultOrganization}'";
      final url =
          "${Constants.jsonWs}/$entityName?_where=$filters&_startRow=$start&_endRow=$end&_sortBy=creationDate desc";

      final authHeader = _authHeader();

      final recivedData = await safeApiCall(() {
        return client.get(Uri.parse(url), headers: authHeader);
      }, defErrMsg);
      return recivedData.fold((l) {
        return left(const Failure(error: defErrMsg));
      }, (r) {
        final resultList = r as List<dynamic>;
        final allRequestDetails = resultList.map((element) {
          return SalesOrderDto.fromJson(element as Map<String, dynamic>)
              .toDomain();
        }).toList();
        return right(allRequestDetails);
      });
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
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

  Future<List<DispatchOrderedProduct>> _fetchOrderPendingProducts(
      String orderId, String defErrMsg) async {
    final products = await fetchQueryResponse(
        Constants.prefDispatchProductsQuery,
        placeholders: {'order_id': orderId});

    return products
        .map((e) =>
            DispatchOrderedProductDto.fromJson(e as Map<String, dynamic>)
                .toDomain())
        .toList();
  }

  @override
  Future<Either<Failure, List<DispatchOrderedProduct>>>
      fetchDispatchBakeryProducts(String orderId) async {
    const String defErrMsg = 'Could not fetch order products';
    try {
      final section = Constants.bakerySection;
      final list = await _fetchOrderPendingProducts(orderId, defErrMsg);
      final filtered =
          list.where((element) => element.productCategory == section).toList();

      if (filtered.isEmpty) {
        return left(Failure(error: 'No products found for $section category'));
      }

      filtered.sortBy((element) => element.productName);

      return right(filtered);
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, List<DispatchOrderedProduct>>>
      fetchDispatchSweetsProducts(String orderId) async {
    const String defErrMsg = 'Could not fetch order products';
    try {
      final section = Constants.sweetsSection;
      final list = await _fetchOrderPendingProducts(orderId, defErrMsg);

      final filtered =
          list.where((element) => element.productCategory == section).toList();

      if (filtered.isEmpty) {
        return left(Failure(error: 'No products found for $section category'));
      }

      filtered.sortBy((element) => element.productName);

      return right(filtered);
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, bool>> saveDispatchQty(
      List<DispatchItemUiModel> products) async {
    const String defErrMsg = 'Could not save dispatch quantities';
    try {
      final String url = "${Constants.jsonWs}/${Entities.orderedProducts}";
      final String reqBody = jsonEncode({
        'data': [
          ...products.map((e) => {
                '_entityName': Entities.orderedProducts,
                'id': e.product.id,
                'samDispatchqty': e.dispatchedQty,
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
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, ShopDispatchProducts>> fetchShopShipments(
      String orderId, String section,
      {bool fromDispatchSection = true}) async {
    return _fetchDispatchOrderedProducts(orderId, section, fromDispatchSection);
  }

  @override
  Future<Either<Failure, bool>> saveProductDispatchQty(
      String productId, double dispatchQty) async {
    const String defErrMsg = 'Could not update product dispatch qty';
    try {
      final String url = "${Constants.jsonWs}/${Entities.orderedProducts}";
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
  Future<Either<Failure, Uint8List>> downloadInvoice(String shipmentId) async {
    const String defErrMsg = 'Could not download invoice';
    try {
      await _generateDispatchInvoice(shipmentId);
      final invoice = await _downloadInvoice(shipmentId);
      if (invoice == null) {
        return left(const Failure(error: defErrMsg));
      }

      return right(base64Decode(invoice.fileData));
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  Future<bool> _generateDispatchInvoice(String shipmentId) async {
    const String defErrMsg = 'Could not generate invoice';
    try {
      final url =
          "${Constants.customWs}/${CustomWebservices.generateDispatchInvoice}";
      final reqBody = jsonEncode({
        'data': {'mInoutId': shipmentId}
      });

      final response = await client.post(Uri.parse(url),
          body: reqBody, headers: _authHeader());

      if (response.statusCode != 200) {
        return false;
      }
      return true;
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return false;
    }
  }

  Future<Attachment?> _downloadInvoice(String id) async {
    const defErrMsg = 'could not fetch data';
    try {
      const entityName = CustomWebservices.attachments;

      final url =
          "${Constants.customWs}/$entityName?record_id=$id&entity_name=${Entities.goodsReceipt}";

      final data = await safeApiCall(
        () => client.get(Uri.parse(url), headers: _authHeader()),
        defErrMsg,
      );

      return data.fold(
        (l) => null,
        (r) {
          final attachments = (r as List<dynamic>)
              .map((element) =>
                  AttachmentDto.fromJson(element as Map<String, dynamic>)
                      .toDomain())
              .toList();
          if (attachments.isEmpty) {
            return null;
          }
          return attachments[0];
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return null;
    }
  }

  @override
  Future<Either<Failure, bool>> saveScannedProductDispatchQty(
      String productCode,
      String uniqueCode,
      String weight,
      String organization,
      String businessPartner) async {
    const String defErrMsg = 'Could not save dispatch quantity';
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

      final querySnapshot =
          await collection.where('unq_code', isEqualTo: uniqueCode).get();
      final docs = querySnapshot.docs;

      if (docs.isNotEmpty) {
        return right(false);
      } else {
        final ref = await collection.add({
          'unq_code': uniqueCode,
          'product_code': productCode,
          'weight': weight,
          'org': organization,
          'bp': businessPartner,
          'created_at': DateTime.now()
        });
        return right(true);
      }
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }
}

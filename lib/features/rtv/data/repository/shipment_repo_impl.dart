import 'dart:convert';
import 'dart:developer';

import 'package:base_auth/entity/id_name.dart';
import 'package:base_auth/entity/logged_in_user.dart';
import 'package:core/core.dart';
import 'package:core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:minerva/auth_helper.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/core/query_helper.dart';
import 'package:minerva/features/rtv/data/model/models.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/features/rtv/domain/entity/shipment.dart';
import 'package:minerva/features/rtv/domain/entity/shipment_form.dart';
import 'package:minerva/features/rtv/domain/repository/shipment_repo.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ShipmentRepo)
class ShipmentRepoImpl with AuthHelper, QueryHelper implements ShipmentRepo {
  final http.Client client;

  ShipmentRepoImpl(this.client);

  @override
  Future<Either<Failure, Shipment>> createShipment(ShipmentForm form) async {
    const String defErrMsg = 'Could not create shipment';
    try {
      final user = sl.get<LoggedInUser>();
      final shipment = await _createShipment(form);
      if (shipment == null) return left(const Failure(error: defErrMsg));
      await _addShipmentLines(
          shipment.id, user.defaultWarehouse, form.products);
      await _completeShipment(shipment.id);
      return right(shipment);
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, List<IdName>>> fetchBusinessPartners() async {
    const String defErrMsg = 'Could not fetch products';
    try {
      const String url =
          "${Constants.jsonWs}/${Entities.businessPartner}?_selectedProperties=id,name&_sortBy=name";
      print(url);
      final data = await safeApiCall(
        () => client.get(Uri.parse(url), headers: _authHeader()),
        defErrMsg,
      );
      return data.fold(
        (Failure l) => left(Failure(error: l.error)),
        (r) {
          final list = (r as List<dynamic>)
              .map((e) => IdName.fromJson(e as Map<String, dynamic>))
              .toList();
          print('List SIze : ${list.length}');
          return right(list);
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> fetchProducts(
      {String? searchText,
      String? barCode,
      List<String>? selectedCategorys,
      int? start,
      int? end,
      String? query}) async {
    const String defErrMsg = 'Could not fetch products';
    String? finalSelectedCategorys = selectedCategorys?.join("','");
    String searchCondition = "";
    String barcodeCondition = "";
    String categoryCondition = "";
    try {
      print('searchText : $query');
      print('barCode : $barCode');
      print('finalSelectedCategorys : $finalSelectedCategorys');
      final filters = <String>[];
      if (query != null && query.trim().isNotEmpty) {
        searchCondition = "lower(name) like  lower('%25$query%25')";
        filters.add(searchCondition);
      }
      if (finalSelectedCategorys != null &&
          finalSelectedCategorys.trim().isNotEmpty) {
        categoryCondition = "productCategory IN ('$finalSelectedCategorys')";
        filters.add(categoryCondition);
      }
      if (barCode != null && barCode.trim().isNotEmpty) {
        barcodeCondition = "lower(uPCEAN) like  lower('%25$barCode%25')";
        filters.add(barcodeCondition);
      }
      print('filters : $filters');
      // ignore: no_leading_underscores_for_local_identifiers
      final _condition =
          filters.isEmpty ? "" : "&_where=${filters.join(" and ")}";
      print('_condition : $_condition');
      final String url =
          "${Constants.jsonWs}/${Entities.product}?_startRow=$start&_endRow=$end$_condition&_sortBy=name";
      print(url);
      final data = await safeApiCall(
        () => client.get(Uri.parse(url), headers: _authHeader()),
        defErrMsg,
      );

      return data.fold(
        (Failure l) => left(Failure(error: l.error)),
        (r) {
          final list = (r as List<dynamic>)
              .map((e) =>
                  ProductDto.fromJson(e as Map<String, dynamic>).toDomain())
              .toList();
          return right(list);
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, List<IdName>>> fetchProductCategory() async {
    const String defErrMsg = 'Could not fetch products';
    try {
      const String url =
          "${Constants.jsonWs}/${Entities.productCategory}?_selectedProperties=id,name&_sortBy=name";
      print(url);
      final data = await safeApiCall(
        () => client.get(Uri.parse(url), headers: _authHeader()),
        defErrMsg,
      );
      return data.fold(
        (Failure l) => left(Failure(error: l.error)),
        (r) {
          final list = (r as List<dynamic>)
              .map((e) => IdName.fromJson(e as Map<String, dynamic>))
              .toList();
          print('List SIze : ${list.length}');
          return right(list);
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, List<Shipment>>> fetchShipments(
      DateTime movementDate, int start, int end) async {
    const String defErrMsg = 'Could not fetch details';
    try {
      final user = sl.get<LoggedInUser>();
      print('$user');
      // final minoutId = '8EA4C542ACF540F3A6A9EFCE4EB41DB2';
      //https://minerva.easycloud.co.in/openbravo1/org.openbravo.service.json.jsonrest/MaterialMgmtShipmentInOut?_sortBy=creationDate%20desc
      final url =
          "${Constants.jsonWs}/${Entities.goodsReceipt}?_startRow=$start&_endRow=$end&_sortBy=creationDate desc";
      // final url =
      //     "${Constants.jsonWs}/${Entities.goodsReceipt}?_where=id='$minoutId'";
      print('Calling : $url');
      final data = await safeApiCall(
        () => client.get(Uri.parse(url), headers: _authHeader()),
        defErrMsg,
      );

      return data.fold(
        (Failure l) => left(Failure(error: l.error)),
        (r) {
          final list = (r as List<dynamic>)
              .map((e) =>
                  ShipmentDto.fromJson(e as Map<String, dynamic>).toDomain())
              .toList();
          return right(list);
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

//https://minerva.easycloud.co.in/openbravo1/?tabId=167&recordId=2030AD7DD4284E2B936E261662EF735A
  Future<Shipment?> _createShipment(ShipmentForm form) async {
    const defErrMsg = 'Could not create shipment';
    final url = "${Constants.jsonWs}/${Entities.goodsReceipt}";
    print('url $url');
    final user = sl.get<LoggedInUser>();
    final requestBody = jsonEncode({
      'data': {
        '_entityName': Entities.goodsReceipt,
        'documentType': '2030AD7DD4284E2B936E261662EF735A',
        'warehouse': user.defaultWarehouse,
        'businessPartner': form.businessPartnerId,
        'partnerAddress': await _fetchBpLocationId(form.businessPartnerId),
        'movementDate': DateFormat("yyyy-MM-dd").format(DateTime.now()),
        'accountingDate': DateFormat("yyyy-MM-dd").format(DateTime.now()),
      }
    });
    // print("");
    print("form.businessPartnerId ${form.businessPartnerId}");
    final data = await safeApiCall(
      () => client.post(Uri.parse(url),
          body: requestBody, headers: _authHeader()),
      defErrMsg,
    );
    print(data);
    return data.fold(
      (l) => null,
      (r) => ShipmentDto.fromJson(r[0] as Map<String, dynamic>).toDomain(),
    );
  }

  Map<String, String> _authHeader() {
    final user = sl.get<LoggedInUser>();
    return getAuthHeader(user.userName, user.password);
  }

  Future<void> _addShipmentLines(String receiptId, String warehouse,
      List<ShipmentFormLine> products) async {
    final url = Uri.parse("${Constants.jsonWs}/${Entities.goodsReceiptLines}");

    final storageBinId = await _fetchStorageBinId(warehouse);
    if (storageBinId.isEmpty) {
      throw Exception('Could not fetch storage bin details');
    }

    var lineNo = 0;
    final reqBody = json.encode({
      'data': [
        ...products.map((e) {
          lineNo = lineNo + 10;
          return {
            '_entityName': Entities.goodsReceiptLines,
            'lineNo': lineNo,
            'product': e.productId,
            'uOM': e.uomId,
            'movementQuantity': e.movementQty,
            'storageBin': storageBinId,
            'shipmentReceipt': receiptId,
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

  Future<String> _fetchBpLocationId(String bpId) async {
    final url = Uri.parse(
        "${Constants.jsonWs}/${Entities.businessPartnerLocation}?_where=businessPartner='$bpId'");
    final result = await safeApiCall(
      () => client.get(url, headers: _authHeader()),
      'Could not fetch bp location id',
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

  Future<void> _completeShipment(String receiptId) async {
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
}

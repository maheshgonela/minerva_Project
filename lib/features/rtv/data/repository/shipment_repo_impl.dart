import 'dart:convert';

import 'package:base_auth/entity/logged_in_user.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:minerva/auth_helper.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/core/query_helper.dart';
import 'package:minerva/features/product_selection/domain/entity/form_line.dart';
import 'package:minerva/features/rtv/data/model/models.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
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

//https://minerva.easycloud.co.in/openbravo1/?tabId=167&recordId=2030AD7DD4284E2B936E261662EF735A
  Future<Shipment?> _createShipment(ShipmentForm form) async {
    const defErrMsg = 'Could not create shipment';
    const url = "${Constants.jsonWs}/${Entities.goodsReceipt}";
    print('createShipmenturl $url');
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

  Future<void> _addShipmentLines(
      String receiptId, String warehouse, List<FormLine> products) async {
    final url = Uri.parse("${Constants.jsonWs}/${Entities.goodsReceiptLines}");
    print("url goodsReceiptLines : $url");
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
    print("url storageBin : $url");
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
    print("url businessPartnerLocation : $url");
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
    print("url processGRNOrOrder : $url");
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

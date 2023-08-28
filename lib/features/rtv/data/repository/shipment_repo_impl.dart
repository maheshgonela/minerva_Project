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
    const String defErrMsg = 'Could not fetch details';
    try {
      final list =
          jsonDecode(await getQuery(Constants.prefRtvBps)) as List<dynamic>;
      final result = list.map((e) => _toIdName(e)).toList();
      return right(result);
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  IdName _toIdName(e) =>
      IdName(id: e['id'].toString(), name: e['name'].toString());

// we have to close above function and work on below function by using below line
// we have to work on fetchBusinessPartners at  ProductDto.fromJson(e as Map<String, dynamic>).toDomain())

  // @override
  // Future<Either<Failure, List<IdName>>> fetchBusinessPartners(
  //     ) async {
  //   const String defErrMsg = 'Could not fetch products';
  //   try {
  //     // var categoryFilter = '';
  //     // if (bpId == Constants.pullaReddySweetsId) {
  //     //   categoryFilter =
  //     //       "productCategory in ('${Constants.bakeryCategoryId}', '${Constants.sweetsCategoryId}')";
  //     // } else if (bpId == Constants.foodsLlpId) {
  //     //   categoryFilter = "productCategory in ('${Constants.oilCategoryId}')";
  //     // }
  //     final String url =
  //         "${Constants.jsonWs}/${Entities.businessPartner}?"
  //         "_sortBy=name";

  //     final data = await safeApiCall(
  //       () => client.get(Uri.parse(url), headers: _authHeader()),
  //       defErrMsg,
  //     );

  //     return data.fold(
  //       (Failure l) => left(Failure(error: l.error)),
  //       (r) {
  //         final list = (r as List<dynamic>)
  //             .map((e) =>
  //                 ProductDto.fromJson(e as Map<String, dynamic>).toDomain())
  //             .toList();
  //         return right(list);
  //       },
  //     );
  //   } catch (e, st) {
  //     logError(e, st, defErrMsg);
  //     return left(const Failure(error: defErrMsg));
  //   }
  // }

  // IdName _toIdName(e) =>
  //     IdName(id: e['id'].toString(), name: e['name'].toString());

  @override
  Future<Either<Failure, List<Product>>> fetchProducts(
      int start, int end, String? query) async {
    const String defErrMsg = 'Could not fetch products';
    try {
      // var categoryFilter = '';
      // if (bpId == Constants.pullaReddySweetsId) {
      //   categoryFilter =
      //       "productCategory in ('${Constants.bakeryCategoryId}', '${Constants.sweetsCategoryId}')";
      // } else if (bpId == Constants.foodsLlpId) {
      //   categoryFilter = "productCategory in ('${Constants.oilCategoryId}')";
      // }
      final String url =
          "${Constants.jsonWs}/${Entities.product}?_startRow=$start&_endRow=$end&"
          "_sortBy=name";

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
  Future<Either<Failure, List<Shipment>>> fetchShipments(
      DateTime movementDate, int start, int end) async {
    const String defErrMsg = 'Could not fetch details';
    try {
      final user = sl.get<LoggedInUser>();
      print('$user');
      // final minoutId = '8EA4C542ACF540F3A6A9EFCE4EB41DB2';
      final docTypeFilter = "documentType='${Constants.rtvShipmentId}'";
      final url =
          "${Constants.jsonWs}/${Entities.goodsReceipt}?_startRow=$start&_endRow=$end&_where=id='${Constants.rtvShipmentId}'&_sortBy=creationDate";
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

  Future<Shipment?> _createShipment(ShipmentForm form) async {
    const defErrMsg = 'Could not create shipment';
    final url = "${Constants.jsonWs}/${Entities.goodsReceipt}";
    final user = sl.get<LoggedInUser>();
    final requestBody = jsonEncode({
      'data': {
        '_entityName': Entities.goodsReceipt,
        'documentType': '22030AD7DD4284E2B936E261662EF735A',
        'warehouse': user.defaultWarehouse,
        'businessPartner': form.businessPartnerId,
        'partnerAddress': await _fetchBpLocationId(form.businessPartnerId),
        'movementDate': DateFormat("yyyy-MM-dd").format(DateTime.now()),
        'accountingDate': DateFormat("yyyy-MM-dd").format(DateTime.now()),
      }
    });

    final data = await safeApiCall(
      () => client.post(Uri.parse(url),
          body: requestBody, headers: _authHeader()),
      defErrMsg,
    );

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

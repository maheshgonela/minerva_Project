import 'dart:convert';

import 'package:base_auth/entity/id_name.dart';
import 'package:base_auth/entity/logged_in_user.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:minerva/auth_helper.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/core/query_helper.dart';
import 'package:minerva/features/product_selection/data/model/product_dto.dart';
import 'package:minerva/features/product_selection/domain/entity/product.dart';
import 'package:minerva/features/product_selection/domain/repository/productSelection_repo.dart';

import 'package:minerva/get_it/injection.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ProductSelectionRepo)
class ProductSelectionRepoImpl
    with AuthHelper, QueryHelper
    implements ProductSelectionRepo {
  final http.Client client;

  ProductSelectionRepoImpl(this.client);

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

  Map<String, String> _authHeader() {
    final user = sl.get<LoggedInUser>();
    return getAuthHeader(user.userName, user.password);
  }
}

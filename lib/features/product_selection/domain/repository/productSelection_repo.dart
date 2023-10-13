import 'package:base_auth/entity/id_name.dart';
import 'package:core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:minerva/features/product_selection/domain/entity/product.dart';

abstract class ProductSelectionRepo {
  Future<Either<Failure, List<Product>>> fetchProducts(
      {String? searchText,
      String? barCode,
      List<String>? selectedCategorys,
      int start,
      int end,
      String? query});

  Future<Either<Failure, List<IdName>>> fetchProductCategory();
  Future<Either<Failure, List<IdName>>> fetchBusinessPartners();
}

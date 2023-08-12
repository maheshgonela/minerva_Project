import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:minerva/features/grn/domain/entities/grn_item_ui_model.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';
import 'package:minerva/features/grn/domain/entities/purchase_order.dart';

abstract class GRNRepository {
  Future<Either<Failure, List<PurchaseOrder>>> fetchPurchaseOrder(
      int start, int end, String? query);

  Future<Either<Failure, List<OrderedProduct>>> fetchOrderedProducts(
      int start, int end, String purchaseOrderId);

  Future<Either<Failure, bool>> createGrn(
      PurchaseOrder order, List<GrnItemUiModel> products);

  Future<Either<Failure, bool>> saveProductDispatchQty(String productId, double dispatchQty);

  Future<Either<Failure, bool>> checkProductValidity(String uniqueCode, String productCode);
}

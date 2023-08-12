import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispatch_ordered_product.freezed.dart';

@freezed
abstract class DispatchOrderedProduct with _$DispatchOrderedProduct {
  const factory DispatchOrderedProduct({
    required String id,
    required String organization,
    required String product,
    required String productCode,
    required String productCategory,
    required String subCategory,
    required String productName,
    required String uOM,
    required String uOMName,
    required String orderedQuantity,
    required String pendingQty,
    required String dispatchQty,
  }) = _DispatchOrderedProduct;
}

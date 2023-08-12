import 'package:freezed_annotation/freezed_annotation.dart';

part 'ordered_product.freezed.dart';

@freezed
abstract class OrderedProduct with _$OrderedProduct {
  const factory OrderedProduct({
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
    required String selectedReceivedQty,
  }) = _OrderedProduct;
}

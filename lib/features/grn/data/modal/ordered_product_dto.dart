import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';

part 'ordered_product_dto.freezed.dart';

part 'ordered_product_dto.g.dart';

@freezed
abstract class OrderedProductDto implements _$OrderedProductDto {
  const OrderedProductDto._();

  @JsonSerializable(explicitToJson: true)
  // ignore: sort_unnamed_constructors_first
  const factory OrderedProductDto({
    required String id,
    required String organization,
    required String product,
    @JsonKey(name: 'code') required String productCode,
    @JsonKey(name: 'productcat') required String productCategory,
    @JsonKey(name: 'subcategory') required String subCategory,
    @JsonKey(name: 'product_name') required String productName,
    @JsonKey(name: 'uom') required String uOM,
    @JsonKey(name: 'uom_name', defaultValue: '') required String uOMName,
    @JsonKey(name: 'ordered_qty') required String orderedQuantity,
    @JsonKey(name: 'pending_qty') required String pendingQty,
    @JsonKey(name: 'dispatch_qty') required String selectedReceivedQty,
  }) = _OrderedProductDto;

  factory OrderedProductDto.fromDomain(OrderedProduct orderProduct) {
    return OrderedProductDto(
        id: orderProduct.id,
        organization: orderProduct.organization,
        product: orderProduct.product,
        productCode: orderProduct.productCode,
        productName: orderProduct.productName,
        uOM: orderProduct.uOM,
        uOMName: orderProduct.uOMName,
        orderedQuantity: orderProduct.orderedQuantity,
        pendingQty: orderProduct.pendingQty,
        selectedReceivedQty: orderProduct.selectedReceivedQty,
        productCategory: orderProduct.productCategory,
        subCategory: orderProduct.subCategory);
  }

  OrderedProduct toDomain() {
    return OrderedProduct(
      id: id,
      organization: organization,
      product: product,
      productCode: productCode,
      productCategory: productCategory,
      subCategory: subCategory,
      productName: productName,
      uOM: uOM,
      uOMName: uOMName,
      orderedQuantity: orderedQuantity,
      pendingQty: pendingQty,
      selectedReceivedQty: selectedReceivedQty,
    );
  }

  factory OrderedProductDto.fromJson(Map<String, dynamic> json) =>
      _$OrderedProductDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';

part 'dispatch_ordered_product_dto.freezed.dart';

part 'dispatch_ordered_product_dto.g.dart';

@freezed
abstract class DispatchOrderedProductDto implements _$DispatchOrderedProductDto {
  const DispatchOrderedProductDto._();

  @JsonSerializable(explicitToJson: true)
  // ignore: sort_unnamed_constructors_first
  const factory DispatchOrderedProductDto({
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
    @JsonKey(name: 'dispatch_qty') required String dispatchQty,
  }) = _DispatchOrderedProductDto;

  factory DispatchOrderedProductDto.fromDomain(DispatchOrderedProduct orderProduct) {
    return DispatchOrderedProductDto(
      id: orderProduct.id,
      organization: orderProduct.organization,
      product: orderProduct.product,
      productCode: orderProduct.productCode,
      productCategory: orderProduct.productCategory,
      subCategory: orderProduct.subCategory,
      productName: orderProduct.productName,
      uOM: orderProduct.uOM,
      uOMName: orderProduct.uOMName,
      orderedQuantity: orderProduct.orderedQuantity,
      pendingQty: orderProduct.pendingQty,
      dispatchQty: orderProduct.dispatchQty,
    );
  }

  DispatchOrderedProduct toDomain() {
    return DispatchOrderedProduct(
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
      dispatchQty: dispatchQty,
    );
  }

  factory DispatchOrderedProductDto.fromJson(Map<String, dynamic> json) => _$DispatchOrderedProductDtoFromJson(json);
}

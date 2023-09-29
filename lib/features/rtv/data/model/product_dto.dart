import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';

part 'product_dto.freezed.dart';

part 'product_dto.g.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  const ProductDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductDto(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'uOM') required String uomId,
      @JsonKey(name: 'uOM\$_identifier') required String uomName,
      @JsonKey(name: 'productCategory') required String productCategoryId,
      @JsonKey(name: 'productCategory\$_identifier')
      required String productCategoryName,
      @JsonKey(name: 'uPCEAN') required String uPCEAN}) = _ProductDto;

  factory ProductDto.fromDomain(Product details) {
    return ProductDto(
        id: details.id,
        name: details.name,
        uomId: details.uomId,
        uomName: details.uomName,
        productCategoryId: details.productCategoryId,
        productCategoryName: details.productCategoryName,
        uPCEAN: details.uPCEAN);
  }

  Product toDomain() {
    return Product(
        id: id,
        name: name,
        uomId: uomId,
        uomName: uomName,
        productCategoryId: productCategoryId,
        productCategoryName: productCategoryName,
        uPCEAN: uPCEAN);
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

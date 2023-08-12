import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';

part 'product_dto.freezed.dart';

part 'product_dto.g.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  const ProductDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'uOM') required String uomId,
    @JsonKey(name: 'uOM\$_identifier') required String uomName,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product details) {
    return ProductDto(
      id: details.id,
      name: details.name,
      uomId: details.uomId,
      uomName: details.uomName,
    );
  }

  Product toDomain() {
    return Product(
      id: this.id,
      name: this.name,
      uomId: this.uomId,
      uomName: this.uomName,
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

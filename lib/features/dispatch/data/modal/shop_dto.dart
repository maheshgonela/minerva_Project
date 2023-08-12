import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';

part 'shop_dto.freezed.dart';

part 'shop_dto.g.dart';

@freezed
abstract class ShopDto implements _$ShopDto {
  const ShopDto._();

  @JsonSerializable(explicitToJson: true)
  // ignore: sort_unnamed_constructors_first
  const factory ShopDto({
    required String id,
    required String name,
  }) = _ShopDto;

  factory ShopDto.fromDomain(Shop shopData) {
    return ShopDto(
      id: shopData.id,
      name: shopData.name,
    );
  }

  Shop toDomain() {
    return Shop(
      id: id,
      name: name,
    );
  }

  factory ShopDto.fromJson(Map<String, dynamic> json) => _$ShopDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';

part 'shipment_line_dto.freezed.dart';

part 'shipment_line_dto.g.dart';

@freezed
abstract class ShipmentLineDto implements _$ShipmentLineDto {
  const ShipmentLineDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ShipmentLineDto({
    required String id,
    @JsonKey(name: 'product') required String productId,
    @JsonKey(name: 'product\$_identifier') required String productName,
    @JsonKey(name: 'uOM') required String uomName,
    @JsonKey(name: 'uOM\$_identifier') required String storageBinName,
    @JsonKey(name: 'movementQuantity') required double movementQty,
  }) = _ShipmentLineDto;

  factory ShipmentLineDto.fromDomain(ShipmentLine details) {
    return ShipmentLineDto(
      id: details.id,
      productId: details.productId,
      productName: details.productName,
      uomName: details.uomName,
      storageBinName: details.storageBinName,
      movementQty: details.movementQty,
    );
  }

  ShipmentLine toDomain() {
    return ShipmentLine(
      id: id,
      productId: productId,
      productName: productName,
      uomName: uomName,
      storageBinName: storageBinName,
      movementQty: movementQty,
    );
  }

  factory ShipmentLineDto.fromJson(Map<String, dynamic> json) =>
      _$ShipmentLineDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';

part 'shipment_dto.freezed.dart';

part 'shipment_dto.g.dart';

@freezed
abstract class ShipmentDto implements _$ShipmentDto {
  const ShipmentDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ShipmentDto({
    required String id,
    required String organization,
    required String documentNo,
    @JsonKey(name: 'businessPartner') required  String bpId,
    @JsonKey(name: 'businessPartner\$_identifier') required  String bpName,
    @JsonKey(name: 'partnerAddress\$_identifier') required String partnerAddress,
    required String movementDate,
    String? description,
  }) = _ShipmentDto;

  factory ShipmentDto.fromDomain(Shipment details) {
    return ShipmentDto(
      id: details.id,
      organization: details.organization,
      documentNo: details.documentNo,
      bpId: details.bpId,
      bpName: details.bpName,
      partnerAddress: details.partnerAddress,
      movementDate: details.movementDate,
      description: details.description,
    );
  }

  Shipment toDomain() {
    return Shipment(
      id: this.id,
      organization: this.organization,
      documentNo: this.documentNo,
      bpId: this.bpId,
      bpName: this.bpName,
      partnerAddress: this.partnerAddress,
      movementDate: this.movementDate,
      description: this.description,
    );
  }

  factory ShipmentDto.fromJson(Map<String, dynamic> json) =>
      _$ShipmentDtoFromJson(json);
}

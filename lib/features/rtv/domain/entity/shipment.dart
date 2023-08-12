import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment.freezed.dart';

@freezed
abstract class Shipment with _$Shipment {
  const factory Shipment({
    required String id,
    required String organization,
    required String documentNo,
    required String bpId,
    required String bpName,
    required String partnerAddress,
    required String movementDate,
    String? description,
  }) = _Shipment;
}

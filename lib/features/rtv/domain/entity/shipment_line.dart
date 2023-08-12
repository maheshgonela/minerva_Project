import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment_line.freezed.dart';

@freezed
abstract class ShipmentLine with _$ShipmentLine {
  const factory ShipmentLine({
    required String id,
    required String productId,
    required String productName,
    required String uomName,
    required String storageBinName,
    required double movementQty,
  }) = _ShipmentLine;
}

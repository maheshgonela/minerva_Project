import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment_form_line.freezed.dart';

@freezed
abstract class ShipmentFormLine with _$ShipmentFormLine {
  const factory ShipmentFormLine({
    required String productId,
    required String productName,
    required String uomId,
    required String uomName,
    required double movementQty,
  }) = _ShipmentFormLine;
}

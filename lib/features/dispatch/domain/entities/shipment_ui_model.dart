import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatched_product_ui_model.dart';

part 'shipment_ui_model.freezed.dart';

@freezed
abstract class ShipmentUiModel with _$ShipmentUiModel {
  const factory ShipmentUiModel({
    required List<DispatchedProductUiModel> products,
    required String shipmentId,
    required String sender,
    required String driver,
    required String vehicleNumber,
    required String creationDate,
}) = _ShipmentUiModel;
}

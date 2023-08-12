import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/shipment_form_line.dart';

part 'shipment_form.freezed.dart';

@freezed
abstract class ShipmentForm with _$ShipmentForm {
  const factory ShipmentForm({
    required String businessPartnerId,
    required List<ShipmentFormLine> products,
  }) = _ShipmentForm;

  static ShipmentForm initial() {
    return const ShipmentForm(
      businessPartnerId: '',
      products: [],
    );
  }
}

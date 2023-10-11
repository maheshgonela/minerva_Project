import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/product_selection/domain/entity/form_line.dart';

part 'shipment_form.freezed.dart';

@freezed
abstract class ShipmentForm with _$ShipmentForm {
  const factory ShipmentForm({
    required String businessPartnerId,
    required List<FormLine> products,
  }) = _ShipmentForm;

  static ShipmentForm initial() {
    return const ShipmentForm(
      businessPartnerId: '',
      products: [],
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/product_selection/domain/entity/form_line.dart';

part 'PurchaseOrder_form.freezed.dart';

@freezed
abstract class PurchaseOrderForm with _$PurchaseOrderForm {
  const factory PurchaseOrderForm({
    required String businessPartnerId,
    required List<FormLine> products,
  }) = _PurchaseOrderForm;

  static PurchaseOrderForm initial() {
    return const PurchaseOrderForm(
      businessPartnerId: '',
      products: [],
    );
  }
}

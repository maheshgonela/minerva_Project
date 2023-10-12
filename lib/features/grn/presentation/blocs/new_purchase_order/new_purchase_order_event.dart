part of 'new_purchase_order_bloc.dart';

// @immutable
// sealed class NewPurchaseOrderEvent {}

@freezed
abstract class NewPurchaseOrderEvent with _$NewPurchaseOrderEvent {
  const factory NewPurchaseOrderEvent.createPurchaseOrder(
    PurchaseOrderForm form,
  ) = _CreatePurchaseOrder;
}

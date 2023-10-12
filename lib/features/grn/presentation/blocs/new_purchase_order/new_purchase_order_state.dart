part of 'new_purchase_order_bloc.dart';

@freezed
abstract class NewPurchaseOrderState with _$NewPurchaseOrderState {
  const factory NewPurchaseOrderState.initial() = _Initial;

  const factory NewPurchaseOrderState.loading() = _Loading;

  const factory NewPurchaseOrderState.success() = _Success;

  const factory NewPurchaseOrderState.failure(Failure failure) = _Failure;
}

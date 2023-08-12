part of 'fetch_purchase_order_bloc.dart';

@freezed
abstract class FetchPurchaseOrderEvent with _$FetchPurchaseOrderEvent {
  const factory FetchPurchaseOrderEvent.fetchInitialPurchaseOrder({String? query}) = _FetchInitialPurchaseOrder;
  const factory FetchPurchaseOrderEvent.fetchMorePurchaseOrder({String? query}) = _FetchMorePurchaseOrder;
}

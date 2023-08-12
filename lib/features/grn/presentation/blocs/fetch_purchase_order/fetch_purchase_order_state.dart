part of 'fetch_purchase_order_bloc.dart';

@freezed
abstract class FetchPurchaseOrderState with _$FetchPurchaseOrderState {
  const factory FetchPurchaseOrderState.initial() = _FetchPurchaseOrderInitial;

  const factory FetchPurchaseOrderState.loading() = _FetchPurchaseOrderLoading;

  const factory FetchPurchaseOrderState.success(
      {required List<PurchaseOrder> records, required bool hasReachedMax, String? query}) = _FetchPurchaseOrderSuccess;

  const factory FetchPurchaseOrderState.failure(Failure failure) = _FetchPurchaseOrderFailure;
}

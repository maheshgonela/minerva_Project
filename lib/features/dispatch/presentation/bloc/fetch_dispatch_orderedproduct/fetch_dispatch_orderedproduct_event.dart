part of 'fetch_dispatch_orderedproduct_bloc.dart';

@freezed
abstract class FetchDispatchOrderedproductEvent with _$FetchDispatchOrderedproductEvent {
  const factory FetchDispatchOrderedproductEvent.fetchBakeryProducts(String purchaseOrderId) =
      _fetchInitialDispatchOrderedproduct;
  const factory FetchDispatchOrderedproductEvent.fetchSweetsProducts(String purchaseOrderId) =
      _fetchMoreDispatchOrderedproduct;
}

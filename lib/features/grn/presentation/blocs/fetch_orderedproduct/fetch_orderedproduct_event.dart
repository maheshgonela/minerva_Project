part of 'fetch_orderedproduct_bloc.dart';

@freezed
abstract class FetchOrderedproductEvent with _$FetchOrderedproductEvent {
  const factory FetchOrderedproductEvent.fetchInitialOrderedproduct(String purchaseOrderId) =
      _fetchInitialOrderedproduct;
  const factory FetchOrderedproductEvent.fetchMoreOrderedproduct(String purchaseOrderId) = _fetchMoreOrderedproduct;
}

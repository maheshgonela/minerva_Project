part of 'shop_trips_bloc.dart';

@freezed
abstract class ShopTripsEvent with _$ShopTripsEvent {
  const factory ShopTripsEvent.fetchBakeryProducts(
    String purchaseOrderId, {
    required  bool fromDispatchSection,
  }) = _fetchInitialDispatchOrderedproduct;

  const factory ShopTripsEvent.fetchSweetsProducts(
    String purchaseOrderId, {
    required bool fromDispatchSection,
  }) = _fetchMoreDispatchOrderedproduct;
}

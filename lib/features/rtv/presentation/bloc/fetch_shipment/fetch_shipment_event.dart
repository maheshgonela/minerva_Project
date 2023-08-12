part of 'fetch_shipment_bloc.dart';

@freezed
class FetchShipmentEvent with _$FetchShipmentEvent {
  const factory FetchShipmentEvent.fetchInitialShipment({String? query}) =
      _FetchInitialShipment;
  const factory FetchShipmentEvent.fetchMoreShipment({String? query}) =
      _FetchMoreShipment;
}

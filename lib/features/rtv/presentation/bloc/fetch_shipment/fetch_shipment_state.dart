part of 'fetch_shipment_bloc.dart';

@freezed
class FetchShipmentState with _$FetchShipmentState {
  const factory FetchShipmentState.initial() = _FetchShipmentInitial;

  const factory FetchShipmentState.loading() = _FetchShipmentLoading;

  const factory FetchShipmentState.success(
      {required List<Shipment> records,
      required bool hasReachedMax,
      String? query}) = _FetchShipmentSuccess;

  const factory FetchShipmentState.failure(Failure failure) = _FetchShipmentFailure;
}

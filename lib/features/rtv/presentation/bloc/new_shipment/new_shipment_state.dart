part of 'new_shipment_bloc.dart';

@freezed
abstract class NewShipmentState with _$NewShipmentState {
  const factory NewShipmentState.initial() = _Initial;

  const factory NewShipmentState.loading() = _Loading;

  const factory NewShipmentState.success() = _Success;

  const factory NewShipmentState.failure(Failure failure) = _Failure;
}

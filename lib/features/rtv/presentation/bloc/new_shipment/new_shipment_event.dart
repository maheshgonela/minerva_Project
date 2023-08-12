part of 'new_shipment_bloc.dart';

@freezed
abstract class NewShipmentEvent with _$NewShipmentEvent {
  const factory NewShipmentEvent.createShipment(
    ShipmentForm form,
  ) = _CreateShipment;
}

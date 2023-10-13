import 'package:core/failures/failure.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:dartz/dartz.dart';

abstract class ShipmentRepo {
  Future<Either<Failure, List<Shipment>>> fetchShipments(
      DateTime movementDate, int start, int end);
  Future<Either<Failure, Shipment>> createShipment(ShipmentForm form);
}

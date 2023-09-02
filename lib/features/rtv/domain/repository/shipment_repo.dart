import 'package:base_auth/entity/id_name.dart';
import 'package:core/failures/failure.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:dartz/dartz.dart';

abstract class ShipmentRepo {
  Future<Either<Failure, List<Shipment>>> fetchShipments(
      DateTime movementDate, int start, int end);
  Future<Either<Failure, Shipment>> createShipment(ShipmentForm form);
  Future<Either<Failure, List<Product>>> fetchProducts(
      {String? searchText, int start, int end, String? query});
  Future<Either<Failure, List<IdName>>> fetchBusinessPartners();
  Future<Either<Failure, List<IdName>>> fetchProductCategory();
}

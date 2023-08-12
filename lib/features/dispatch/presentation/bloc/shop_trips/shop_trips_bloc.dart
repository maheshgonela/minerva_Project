import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/features/dispatch/domain/entities/shop_dispatch_products.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:injectable/injectable.dart';

part 'shop_trips_bloc.freezed.dart';
part 'shop_trips_event.dart';
part 'shop_trips_state.dart';

@injectable
class ShopTripsBloc extends Bloc<ShopTripsEvent, ShopTripsState> {
  final DispatchRepository repo;

  ShopTripsBloc(
    this.repo,
  ) : super(const ShopTripsState.initial()) {
    on<ShopTripsEvent>((event, emit) async {
      await event.map(
        fetchBakeryProducts: (e) async {
          emit(const ShopTripsState.loading());

          final result = await repo.fetchShopShipments(
            e.purchaseOrderId,
            Constants.bakerySection,
            fromDispatchSection: e.fromDispatchSection,
          );
          emit(result.fold(
            (l) => ShopTripsState.failure(l),
            (r) => ShopTripsState.success(
              records: r,
              hasReachedMax: true,
              query: e.purchaseOrderId,
            ),
          ));
        },
        fetchSweetsProducts: (e) async {
          emit(const ShopTripsState.loading());

          final result = await repo.fetchShopShipments(
            e.purchaseOrderId,
            Constants.sweetsSection,
            fromDispatchSection: e.fromDispatchSection,
          );
          emit(result.fold(
            (l) => ShopTripsState.failure(l),
            (r) => ShopTripsState.success(
              records: r,
              hasReachedMax: true,
              query: e.purchaseOrderId,
            ),
          ));
        },
      );
    });
  }
}

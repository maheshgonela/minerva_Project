import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/features/rtv/domain/repository/shipment_repo.dart';
import 'package:injectable/injectable.dart';

part 'fetch_shipment_bloc.freezed.dart';
part 'fetch_shipment_event.dart';
part 'fetch_shipment_state.dart';

@injectable
class FetchShipmentBloc extends Bloc<FetchShipmentEvent, FetchShipmentState> {
  final ShipmentRepo repo;
  final int pageLength = 20;

  FetchShipmentBloc(
    this.repo,
  ) : super(FetchShipmentState.initial()) {
    on<FetchShipmentEvent>((event, emit) async {
      await event.map(fetchInitialShipment: (e) async {
        emit(FetchShipmentState.loading());

        var result = await repo.fetchShipments(DateTime.now(), 0, pageLength);
        emit(result.fold(
          (l) => FetchShipmentState.failure(l),
          (r) => FetchShipmentState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.query,
          ),
        ));
      }, fetchMoreShipment: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchShipments(
                DateTime.now(),
                oldRecord.length,
                oldRecord.length + pageLength,
              );
              return result.fold(
                (f) => FetchShipmentState.failure(f),
                (r) => FetchShipmentState.success(
                  records: oldRecord + r,
                  hasReachedMax: r.length < pageLength,
                ),
              );
            }
            return state;
          },
          failure: (_) => state,
        ));
      });
    });
  }
}

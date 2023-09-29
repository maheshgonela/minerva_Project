import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/grn/domain/entities/purchase_order.dart';
import 'package:minerva/features/grn/domain/repository/grn_repository.dart';
import 'package:injectable/injectable.dart';

part 'fetch_purchase_order_bloc.freezed.dart';
part 'fetch_purchase_order_event.dart';
part 'fetch_purchase_order_state.dart';

@injectable
class FetchPurchaseOrderBloc extends Bloc<FetchPurchaseOrderEvent, FetchPurchaseOrderState> {
  final GRNRepository repo;
  final int pageLength = 20;

  FetchPurchaseOrderBloc(
    this.repo,
  ) : super(const FetchPurchaseOrderState.initial()) {
    on<FetchPurchaseOrderEvent>((event, emit) async {
      await event.map(fetchInitialPurchaseOrder: (e) async {
        emit(const FetchPurchaseOrderState.loading());

        var result = await repo.fetchPurchaseOrder(0, pageLength, e.query);
        emit(result.fold(
          (l) => FetchPurchaseOrderState.failure(l),
          (r) => FetchPurchaseOrderState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.query,
          ),
        ));
      }, fetchMorePurchaseOrder: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchPurchaseOrder(
                oldRecord.length,
                oldRecord.length + pageLength,
                e.query,
              );
              return result.fold(
                (f) => FetchPurchaseOrderState.failure(f),
                (r) => FetchPurchaseOrderState.success(
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

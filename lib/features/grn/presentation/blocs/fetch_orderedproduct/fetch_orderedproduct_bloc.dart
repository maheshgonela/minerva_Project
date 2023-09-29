import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';
import 'package:minerva/features/grn/domain/repository/grn_repository.dart';
import 'package:injectable/injectable.dart';

part 'fetch_orderedproduct_bloc.freezed.dart';
part 'fetch_orderedproduct_event.dart';
part 'fetch_orderedproduct_state.dart';

@injectable
class FetchOrderedproductBloc extends Bloc<FetchOrderedproductEvent, FetchOrderedproductState> {
  final GRNRepository repo;
  final int pageLength = 20;

  FetchOrderedproductBloc(
    this.repo,
  ) : super(const FetchOrderedproductState.initial()) {
    on<FetchOrderedproductEvent>((event, emit) async {
      await event.map(fetchInitialOrderedproduct: (e) async {
        emit(const FetchOrderedproductState.loading());

        var result = await repo.fetchOrderedProducts(0, pageLength, e.purchaseOrderId);
        emit(result.fold(
          (l) => FetchOrderedproductState.failure(l),
          (r) => FetchOrderedproductState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.purchaseOrderId,
          ),
        ));
      }, fetchMoreOrderedproduct: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchOrderedProducts(
                oldRecord.length,
                oldRecord.length + pageLength,
                e.purchaseOrderId,
              );
              return result.fold(
                (f) => FetchOrderedproductState.failure(f),
                (r) => FetchOrderedproductState.success(
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

import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:injectable/injectable.dart';

part 'fetch_dispatch_orderedproduct_bloc.freezed.dart';
part 'fetch_dispatch_orderedproduct_event.dart';
part 'fetch_dispatch_orderedproduct_state.dart';

@injectable
class FetchDispatchOrderedproductBloc extends Bloc<
    FetchDispatchOrderedproductEvent, FetchDispatchOrderedproductState> {
  final DispatchRepository repo;

  FetchDispatchOrderedproductBloc(
    this.repo,
  ) : super(const FetchDispatchOrderedproductState.initial()) {
    on<FetchDispatchOrderedproductEvent>((event, emit) async {
      await event.map(
        fetchBakeryProducts: (e) async {
          emit(const FetchDispatchOrderedproductState.loading());

          final result =
              await repo.fetchDispatchBakeryProducts(e.purchaseOrderId);
          emit(result.fold(
            (l) => FetchDispatchOrderedproductState.failure(l),
            (r) => FetchDispatchOrderedproductState.success(
              records: r,
              hasReachedMax: true,
              query: e.purchaseOrderId,
            ),
          ));
        },
        fetchSweetsProducts: (e) async {
          emit(const FetchDispatchOrderedproductState.loading());

          final result =
              await repo.fetchDispatchSweetsProducts(e.purchaseOrderId);
          emit(result.fold(
            (l) => FetchDispatchOrderedproductState.failure(l),
            (r) => FetchDispatchOrderedproductState.success(
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

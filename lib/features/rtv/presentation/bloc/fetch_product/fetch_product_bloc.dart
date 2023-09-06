import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/features/rtv/domain/repository/shipment_repo.dart';
import 'package:injectable/injectable.dart';

part 'fetch_product_bloc.freezed.dart';
part 'fetch_product_event.dart';
part 'fetch_product_state.dart';

@injectable
class FetchProductBloc extends Bloc<FetchProductEvent, FetchProductState> {
  final ShipmentRepo repo;
  final int pageLength = 20;

  FetchProductBloc(
    this.repo,
  ) : super(FetchProductState.initial()) {
    on<FetchProductEvent>((event, emit) async {
      await event.map(fetchInitialProduct: (e) async {
        emit(FetchProductState.loading());

        final result = await repo.fetchProducts(
            start: 0,
            end: pageLength,
            query: e.query,
            selectedCategorys: e.selectedCategorys,
            barCode: e.barCode);
        emit(result.fold(
          (l) => FetchProductState.failure(l),
          (r) => FetchProductState.success(
              categories: e.selectedCategorys ?? <String>[],
              hasReachedMax: r.length < pageLength,
              records: r,
              query: e.query,
              barCode: e.barCode),
        ));
      }, fetchMoreProduct: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success:
              (oldRecord, hasReachedMax, categories, query, barCode) async {
            if (!hasReachedMax) {
              final result = await repo.fetchProducts(
                start: oldRecord.length,
                end: oldRecord.length + pageLength,
                query: e.query,
                selectedCategorys: e.selectedCategorys,
              );

              return result.fold(
                (f) => FetchProductState.failure(f),
                (r) => FetchProductState.success(
                  categories: e.selectedCategorys ?? <String>[],
                  hasReachedMax: r.length < pageLength,
                  records: oldRecord + r,
                  query: e.query,
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

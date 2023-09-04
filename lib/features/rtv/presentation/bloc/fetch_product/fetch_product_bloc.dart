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

        var result = await repo.fetchProducts(
            searchText: e.searchquery,
            barCode: e.barcodequery,
            selectedCategorys: e.selectedCategorysquery,
            start: 0,
            end: pageLength,
            query: e.query);
        emit(result.fold(
          (l) => FetchProductState.failure(l),
          (r) => FetchProductState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.query,
          ),
        ));
      }, fetchMoreProduct: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchProducts(
                  start: oldRecord.length,
                  end: oldRecord.length + pageLength,
                  query: e.query,
                  searchText: e.searchquery,
                  selectedCategorys: e.selectedCategorysquery);
              return result.fold(
                (f) => FetchProductState.failure(f),
                (r) => FetchProductState.success(
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

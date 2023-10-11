import 'package:base_auth/entity/id_name.dart';
import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:minerva/features/product_selection/domain/repository/productSelection_repo.dart';

part 'fetch_product_category_bloc.freezed.dart';
part 'fetch_product_category_event.dart';
part 'fetch_product_category_state.dart';

@injectable
class FetchProductCategoryBloc
    extends Bloc<FetchProductCategoryEvent, FetchProductCategoryState> {
  final ProductSelectionRepo repo;
  final int pageLength = 20;

  FetchProductCategoryBloc(
    this.repo,
  ) : super(const FetchProductCategoryState.initial()) {
    on<FetchProductCategoryEvent>((event, emit) async {
      await event.map(fetchInitialProductCategory: (e) async {
        emit(const FetchProductCategoryState.loading());

        var result = await repo.fetchProductCategory();
        emit(result.fold(
          (l) => FetchProductCategoryState.failure(l),
          (r) => FetchProductCategoryState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.query,
          ),
        ));
      }, fetchMoreProductCategory: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchProductCategory();
              return result.fold(
                (f) => FetchProductCategoryState.failure(f),
                (r) => FetchProductCategoryState.success(
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

import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:injectable/injectable.dart';

part 'fetch_shop_bloc.freezed.dart';
part 'fetch_shop_event.dart';
part 'fetch_shop_state.dart';

@injectable
class FetchShopBloc extends Bloc<FetchShopEvent, FetchShopState> {
  final DispatchRepository repo;
  final int pageLength = 20;

  FetchShopBloc(
    this.repo,
  ) : super(FetchShopState.initial()) {
    on<FetchShopEvent>((event, emit) async {
      await event.map(fetchInitialShop: (e) async {
        emit(FetchShopState.loading());

        var result = await repo.fetchShops(0, pageLength, e.query);
        emit(result.fold(
          (l) => FetchShopState.failure(l),
          (r) => FetchShopState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.query,
          ),
        ));
      }, fetchMoreShop: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchShops(
                oldRecord.length,
                oldRecord.length + pageLength,
                e.query,
              );
              return result.fold(
                (f) => FetchShopState.failure(f),
                (r) => FetchShopState.success(
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

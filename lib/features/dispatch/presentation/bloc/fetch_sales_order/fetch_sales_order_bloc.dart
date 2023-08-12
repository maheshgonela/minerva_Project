import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:injectable/injectable.dart';

part 'fetch_sales_order_bloc.freezed.dart';
part 'fetch_sales_order_event.dart';
part 'fetch_sales_order_state.dart';

@injectable
class FetchSalesOrderBloc extends Bloc<FetchSalesOrderEvent, FetchSalesOrderState> {
  final DispatchRepository repo;
  final int pageLength = 20;

  FetchSalesOrderBloc(
    this.repo,
  ) : super(FetchSalesOrderState.initial()) {
    on<FetchSalesOrderEvent>((event, emit) async {
      await event.map(fetchInitialSalesOrder: (e) async {
        emit(FetchSalesOrderState.loading());

        var result = await repo.fetchSalesOrder(0, pageLength, e.businessPartnerId);
        emit(result.fold(
          (l) => FetchSalesOrderState.failure(l),
          (r) => FetchSalesOrderState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.businessPartnerId,
          ),
        ));
      }, fetchMoreSalesOrder: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchSalesOrder(
                oldRecord.length,
                oldRecord.length + pageLength,
                e.businessPartnerId,
              );
              return result.fold(
                (f) => FetchSalesOrderState.failure(f),
                (r) => FetchSalesOrderState.success(
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

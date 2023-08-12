part of 'fetch_sales_order_bloc.dart';

@freezed
abstract class FetchSalesOrderState with _$FetchSalesOrderState {
  const factory FetchSalesOrderState.initial() = _FetchSalesOrderInitial;

  const factory FetchSalesOrderState.loading() = _FetchSalesOrderLoading;

  const factory FetchSalesOrderState.success(
      {required List<SalesOrder> records, required bool hasReachedMax, String? query}) = _FetchSalesOrderSuccess;

  const factory FetchSalesOrderState.failure(Failure failure) = _FetchSalesOrderFailure;
}

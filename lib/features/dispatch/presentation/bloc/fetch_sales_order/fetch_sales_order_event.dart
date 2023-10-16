part of 'fetch_sales_order_bloc.dart';

@freezed
abstract class FetchSalesOrderEvent with _$FetchSalesOrderEvent {
  const factory FetchSalesOrderEvent.fetchInitialSalesOrder(
          String businessPartnerId, String organizationId) =
      _FetchInitialSalesOrder;
  const factory FetchSalesOrderEvent.fetchMoreSalesOrder(
      String businessPartnerId, String organizationId) = _FetchMoreSalesOrder;
}

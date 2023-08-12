part of 'fetch_product_bloc.dart';

@freezed
class FetchProductEvent with _$FetchProductEvent {
  const factory FetchProductEvent.fetchInitialProduct(String bpId, {String? query}) =
      _FetchInitialProduct;
  const factory FetchProductEvent.fetchMoreProduct(String bpId, {String? query}) =
      _FetchMoreProduct;
}

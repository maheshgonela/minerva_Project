part of 'fetch_product_bloc.dart';

@freezed
class FetchProductEvent with _$FetchProductEvent {
  const factory FetchProductEvent.fetchInitialProduct({
    String? query,
    List<String>? selectedCategorys,
    String? barCode,
  }) = _FetchInitialProduct;
  const factory FetchProductEvent.fetchMoreProduct({
    String? query,
    List<String>? selectedCategorys,
  }) = _FetchMoreProduct;
}

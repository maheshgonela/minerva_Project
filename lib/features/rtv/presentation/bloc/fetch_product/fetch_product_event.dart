part of 'fetch_product_bloc.dart';

@freezed
class FetchProductEvent with _$FetchProductEvent {
  const factory FetchProductEvent.fetchInitialProduct({
    String? query,
    String? searchquery,
    String? barcodequery,
    String? selectedCategorysquery,
  }) = _FetchInitialProduct;
  const factory FetchProductEvent.fetchMoreProduct({
    String? query,
    String? searchquery,
    String? selectedCategorysquery,
  }) = _FetchMoreProduct;
}

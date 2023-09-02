part of 'fetch_product_category_bloc.dart';

@freezed
class FetchProductCategoryEvent with _$FetchProductCategoryEvent {
  const factory FetchProductCategoryEvent.fetchInitialProductCategory(
      {String? query}) = _FetchInitialProductCategory;
  const factory FetchProductCategoryEvent.fetchMoreProductCategory(
      {String? query}) = _FetchMoreProductCategory;
}

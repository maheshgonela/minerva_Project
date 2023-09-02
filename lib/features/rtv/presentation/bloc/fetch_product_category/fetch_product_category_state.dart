part of 'fetch_product_category_bloc.dart';

@freezed
class FetchProductCategoryState with _$FetchProductCategoryState {
  const factory FetchProductCategoryState.initial() =
      _FetchProductCategoryInitial;

  const factory FetchProductCategoryState.loading() =
      _FetchProductCategoryLoading;

  const factory FetchProductCategoryState.success(
      {required List<IdName> records,
      required bool hasReachedMax,
      String? query}) = _FetchProductCategorySuccess;

  const factory FetchProductCategoryState.failure(Failure failure) =
      _FetchProductCategoryFailure;
}

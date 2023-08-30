part of 'fetch_product_bloc.dart';

@freezed
class FetchProductState with _$FetchProductState {
  const factory FetchProductState.initial() = _FetchProductInitial;

  const factory FetchProductState.loading() = _FetchProductLoading;

  const factory FetchProductState.success(
      {required List<Product> records,
      required bool hasReachedMax,
      String? query}) = _FetchProductSuccess;

  const factory FetchProductState.failure(Failure failure) =
      _FetchProductFailure;
}

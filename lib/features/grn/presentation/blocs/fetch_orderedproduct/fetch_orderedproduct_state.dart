part of 'fetch_orderedproduct_bloc.dart';

@freezed
abstract class FetchOrderedproductState with _$FetchOrderedproductState {
  const factory FetchOrderedproductState.initial() = _FetchOrderedproductInitial;

  const factory FetchOrderedproductState.loading() = _FetchOrderedproductLoading;

  const factory FetchOrderedproductState.success(
      {required List<OrderedProduct> records,
      required bool hasReachedMax,
      String? query}) = _FetchOrderedproductSuccess;

  const factory FetchOrderedproductState.failure(Failure failure) = _FetchOrderedproductFailure;
}

part of 'fetch_dispatch_orderedproduct_bloc.dart';

@freezed
abstract class FetchDispatchOrderedproductState
    with _$FetchDispatchOrderedproductState {
  const factory FetchDispatchOrderedproductState.initial() =
      _FetchDispatchOrderedproductInitial;

  const factory FetchDispatchOrderedproductState.loading() =
      _FetchDispatchOrderedproductLoading;

  const factory FetchDispatchOrderedproductState.success({
    required List<DispatchOrderedProduct> records,
    required bool hasReachedMax,
    String? query,
  }) = _FetchDispatchOrderedproductSuccess;

  const factory FetchDispatchOrderedproductState.failure(Failure failure) =
      _FetchDispatchOrderedproductFailure;
}

part of 'fetch_shop_bloc.dart';

@freezed
abstract class FetchShopState with _$FetchShopState {
  const factory FetchShopState.initial() = _FetchShopInitial;

  const factory FetchShopState.loading() = _FetchShopLoading;

  const factory FetchShopState.success({required List<Shop> records, required bool hasReachedMax, String? query}) =
      _FetchShopSuccess;

  const factory FetchShopState.failure(Failure failure) = _FetchShopFailure;
}

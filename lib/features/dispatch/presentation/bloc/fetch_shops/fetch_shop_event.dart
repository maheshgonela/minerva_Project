part of 'fetch_shop_bloc.dart';

@freezed
abstract class FetchShopEvent with _$FetchShopEvent {
  const factory FetchShopEvent.fetchInitialShop({String? query}) = _FetchInitialShop;
  const factory FetchShopEvent.fetchMoreShop({String? query}) = _FetchMoreShop;
}

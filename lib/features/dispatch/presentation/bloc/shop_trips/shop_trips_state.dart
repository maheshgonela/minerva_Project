part of 'shop_trips_bloc.dart';

@freezed
abstract class ShopTripsState with _$ShopTripsState {
  const factory ShopTripsState.initial() = _ShopTripsInitial;

  const factory ShopTripsState.loading() = _ShopTripsLoading;

  const factory ShopTripsState.success({
    required ShopDispatchProducts records,
    required bool hasReachedMax,
    String? query,
  }) = _ShopTripsSuccess;

  const factory ShopTripsState.failure(Failure failure) = _ShopTripsFailure;
}

part of 'create_dispatch_cubit.dart';

@freezed
class CreateDispatchState with _$CreateDispatchState {
  const factory CreateDispatchState({
    required List<DispatchInfoWrapper> dispatchOrders,
    required bool isLoading,
    required bool isSuccess,
    required String errorMessage,
    required String section,
    required String driver,
    required String sender,
    required String vehicleNumber,
    required String shipmentId,
  }) = _CreateDispatchState;
}

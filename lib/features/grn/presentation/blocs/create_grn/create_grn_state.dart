part of 'create_grn_cubit.dart';

@freezed
class CreateGrnState with _$CreateGrnState {
  const factory CreateGrnState({
    PurchaseOrder? order,
    required List<GrnItemUiModel> grnProducts,
    required bool isLoading,
    required bool isSuccess,
    required String errorMessage,
  }) = _CreateGrnState;
}

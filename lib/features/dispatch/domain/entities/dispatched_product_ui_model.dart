import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispatched_product_ui_model.freezed.dart';

@freezed
abstract class DispatchedProductUiModel with _$DispatchedProductUiModel {
  const factory DispatchedProductUiModel({
    required String productName,
    required double orderedQty,
    required double dispatchedQty,
  }) = _DispatchedProductUiModel;
}

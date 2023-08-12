import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';

part 'dispatch_item_ui_model.freezed.dart';

@freezed
class DispatchItemUiModel with _$DispatchItemUiModel {
  const factory DispatchItemUiModel({
    required DispatchOrderedProduct product,
    required bool isReceivedFull,
    required bool isReceivedPartial,
    required double dispatchedQty,
  }) = _DispatchItemUiModel;
}

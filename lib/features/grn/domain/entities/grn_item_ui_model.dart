import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';

part 'grn_item_ui_model.freezed.dart';

@freezed
class GrnItemUiModel with _$GrnItemUiModel {
  const factory GrnItemUiModel({
    required OrderedProduct product,
    required bool isReceivedFull,
    required bool isReceivedPartial,
    required double receivedQty,
  }) = _GrnItemUiModel;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_line.freezed.dart';

@freezed
abstract class FormLine with _$FormLine {
  const factory FormLine({
    required String productId,
    required String productName,
    required String uomId,
    required String uomName,
    required double movementQty,
  }) = _FormLine;
}

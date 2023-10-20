import 'package:base_auth/entity/id_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_item_ui_model.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';

part 'dispatch_info_wrapper.freezed.dart';

@freezed
abstract class DispatchInfoWrapper with _$DispatchInfoWrapper {
  const factory DispatchInfoWrapper({
    required SalesOrder order,
    required IdName shop,
    required List<DispatchItemUiModel> dispatchItems,
    required List<DispatchOrderedProduct> allProducts,
    required double totalQty,
  }) = _DispatchInfoWrapper;
}

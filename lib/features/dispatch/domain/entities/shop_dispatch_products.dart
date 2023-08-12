import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';
import 'package:minerva/features/dispatch/domain/entities/shipment_ui_model.dart';

part 'shop_dispatch_products.freezed.dart';

@freezed
abstract class ShopDispatchProducts with _$ShopDispatchProducts {
  const factory ShopDispatchProducts({
    required List<DispatchOrderedProduct> pending,
    required List<ShipmentUiModel> shipped,
  }) = _ShopDispatchProducts;
}

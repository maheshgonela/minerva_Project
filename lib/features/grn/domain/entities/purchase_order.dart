import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_order.freezed.dart';

@freezed
abstract class PurchaseOrder with _$PurchaseOrder {
  const factory PurchaseOrder({
    required String id,
    required String organization,
    required String documentNo,
    required String businessPartner,
    required String businessPartnerLocation,
    required String warehouse,
    required String scheduledDeliveryDate,
    String? deliveryLocation,
  }) = _PurchaseOrder;
}

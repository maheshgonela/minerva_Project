import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_order.freezed.dart';

@freezed
abstract class SalesOrder with _$SalesOrder {
  const factory SalesOrder({
    required String id,
    required String organization,
    required String documentNo,
    required String businessPartner,
    required String businessPartnerLocation,
    required String warehouse,
    required String scheduledDeliveryDate,
    String? deliveryLocation,
  }) = _SalesOrder;
}

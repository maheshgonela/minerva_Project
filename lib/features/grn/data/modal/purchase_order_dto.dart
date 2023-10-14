import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/grn/domain/entities/purchase_order.dart';

part 'purchase_order_dto.freezed.dart';

part 'purchase_order_dto.g.dart';

@freezed
abstract class PurchaseOrderDto implements _$PurchaseOrderDto {
  const PurchaseOrderDto._();

  @JsonSerializable(explicitToJson: true)
  // ignore: sort_unnamed_constructors_first
  const factory PurchaseOrderDto({
    required String id,
    required String organization,
    required String documentNo,
    required String businessPartner,
    @JsonKey(name: 'partnerAddress') required String businessPartnerLocation,
    required String warehouse,
    required String scheduledDeliveryDate,
    String? deliveryLocation,
  }) = _PurchaseOrderDto;

  factory PurchaseOrderDto.fromDomain(PurchaseOrder po) {
    return PurchaseOrderDto(
      id: po.id,
      organization: po.organization,
      documentNo: po.documentNo,
      deliveryLocation: po.deliveryLocation,
      scheduledDeliveryDate: po.scheduledDeliveryDate,
      businessPartner: po.businessPartner,
      businessPartnerLocation: po.businessPartnerLocation,
      warehouse: po.warehouse,
    );
  }

  PurchaseOrder toDomain() {
    return PurchaseOrder(
      id: id,
      organization: organization,
      documentNo: documentNo,
      deliveryLocation: deliveryLocation,
      scheduledDeliveryDate: scheduledDeliveryDate,
      businessPartner: businessPartner,
      businessPartnerLocation: businessPartnerLocation,
      warehouse: warehouse,
    );
  }

  factory PurchaseOrderDto.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderDtoFromJson(json);
}

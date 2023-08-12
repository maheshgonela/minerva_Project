import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';

part 'sales_order_dto.freezed.dart';

part 'sales_order_dto.g.dart';

@freezed
abstract class SalesOrderDto implements _$SalesOrderDto {
  const SalesOrderDto._();

  @JsonSerializable(explicitToJson: true)
  // ignore: sort_unnamed_constructors_first
  const factory SalesOrderDto({
    required String id,
    required String organization,
    required String documentNo,
    required String businessPartner,
    @JsonKey(name: 'partnerAddress') required String businessPartnerLocation,
    required String warehouse,
    required String scheduledDeliveryDate,
    String? deliveryLocation,
  }) = _SalesOrderDto;

  factory SalesOrderDto.fromDomain(SalesOrder po) {
    return SalesOrderDto(
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

  SalesOrder toDomain() {
    return SalesOrder(
      id: this.id,
      organization: this.organization,
      documentNo: this.documentNo,
      deliveryLocation: this.deliveryLocation,
      scheduledDeliveryDate: this.scheduledDeliveryDate,
      businessPartner: this.businessPartner,
      businessPartnerLocation: this.businessPartnerLocation,
      warehouse: this.warehouse,
    );
  }

  factory SalesOrderDto.fromJson(Map<String, dynamic> json) => _$SalesOrderDtoFromJson(json);
}

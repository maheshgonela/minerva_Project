// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseOrderDtoImpl _$$PurchaseOrderDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchaseOrderDtoImpl(
      id: json['id'] as String,
      organization: json['organization'] as String,
      documentNo: json['documentNo'] as String,
      businessPartner: json['businessPartner'] as String,
      businessPartnerLocation: json['partnerAddress'] as String,
      warehouse: json['warehouse'] as String,
      scheduledDeliveryDate: json['scheduledDeliveryDate'] as String,
      deliveryLocation: json['deliveryLocation'] as String?,
    );

Map<String, dynamic> _$$PurchaseOrderDtoImplToJson(
        _$PurchaseOrderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization,
      'documentNo': instance.documentNo,
      'businessPartner': instance.businessPartner,
      'partnerAddress': instance.businessPartnerLocation,
      'warehouse': instance.warehouse,
      'scheduledDeliveryDate': instance.scheduledDeliveryDate,
      'deliveryLocation': instance.deliveryLocation,
    };

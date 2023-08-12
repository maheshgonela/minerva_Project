// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipmentDto _$$_ShipmentDtoFromJson(Map<String, dynamic> json) =>
    _$_ShipmentDto(
      id: json['id'] as String,
      organization: json['organization'] as String,
      documentNo: json['documentNo'] as String,
      bpId: json['businessPartner'] as String,
      bpName: json[r'businessPartner$_identifier'] as String,
      partnerAddress: json[r'partnerAddress$_identifier'] as String,
      movementDate: json['movementDate'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ShipmentDtoToJson(_$_ShipmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization,
      'documentNo': instance.documentNo,
      'businessPartner': instance.bpId,
      r'businessPartner$_identifier': instance.bpName,
      r'partnerAddress$_identifier': instance.partnerAddress,
      'movementDate': instance.movementDate,
      'description': instance.description,
    };

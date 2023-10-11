// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_line_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentLineDtoImpl _$$ShipmentLineDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentLineDtoImpl(
      id: json['id'] as String,
      productId: json['product'] as String,
      productName: json[r'product$_identifier'] as String,
      uomName: json['uOM'] as String,
      storageBinName: json[r'uOM$_identifier'] as String,
      movementQty: (json['movementQuantity'] as num).toDouble(),
    );

Map<String, dynamic> _$$ShipmentLineDtoImplToJson(
        _$ShipmentLineDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.productId,
      r'product$_identifier': instance.productName,
      'uOM': instance.uomName,
      r'uOM$_identifier': instance.storageBinName,
      'movementQuantity': instance.movementQty,
    };

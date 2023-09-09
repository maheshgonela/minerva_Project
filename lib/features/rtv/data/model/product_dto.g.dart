// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      id: json['id'] as String,
      name: json['name'] as String,
      uomId: json['uOM'] as String,
      uomName: json[r'uOM$_identifier'] as String,
      productCategoryId: json['productCategory'] as String,
      productCategoryName: json[r'productCategory$_identifier'] as String,
      uPCEAN: json['uPCEAN'] as String,
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uOM': instance.uomId,
      r'uOM$_identifier': instance.uomName,
      'productCategory': instance.productCategoryId,
      r'productCategory$_identifier': instance.productCategoryName,
      'uPCEAN': instance.uPCEAN,
    };

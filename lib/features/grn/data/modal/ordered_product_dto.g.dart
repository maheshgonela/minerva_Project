// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordered_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderedProductDtoImpl _$$OrderedProductDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderedProductDtoImpl(
      id: json['id'] as String,
      organization: json['organization'] as String,
      product: json['product'] as String,
      productCode: json['code'] as String,
      productCategory: json['productcat'] as String,
      subCategory: json['subcategory'] as String,
      productName: json['product_name'] as String,
      uOM: json['uom'] as String,
      uOMName: json['uom_name'] as String? ?? '',
      orderedQuantity: json['ordered_qty'] as String,
      pendingQty: json['pending_qty'] as String,
      selectedReceivedQty: json['dispatch_qty'] as String,
    );

Map<String, dynamic> _$$OrderedProductDtoImplToJson(
        _$OrderedProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization,
      'product': instance.product,
      'code': instance.productCode,
      'productcat': instance.productCategory,
      'subcategory': instance.subCategory,
      'product_name': instance.productName,
      'uom': instance.uOM,
      'uom_name': instance.uOMName,
      'ordered_qty': instance.orderedQuantity,
      'pending_qty': instance.pendingQty,
      'dispatch_qty': instance.selectedReceivedQty,
    };

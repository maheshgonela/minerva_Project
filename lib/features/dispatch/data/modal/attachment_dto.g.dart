// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentDtoImpl _$$AttachmentDtoImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentDtoImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
      fileData: json['file_data'] as String,
    );

Map<String, dynamic> _$$AttachmentDtoImplToJson(_$AttachmentDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'id': instance.id,
      'file_data': instance.fileData,
    };

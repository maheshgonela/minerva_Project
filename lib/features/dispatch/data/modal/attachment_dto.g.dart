// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttachmentDto _$$_AttachmentDtoFromJson(Map<String, dynamic> json) =>
    _$_AttachmentDto(
      name: json['name'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
      fileData: json['file_data'] as String,
    );

Map<String, dynamic> _$$_AttachmentDtoToJson(_$_AttachmentDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'id': instance.id,
      'file_data': instance.fileData,
    };

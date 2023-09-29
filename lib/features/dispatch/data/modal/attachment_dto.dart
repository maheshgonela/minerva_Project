import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/attachment.dart';

part 'attachment_dto.freezed.dart';

part 'attachment_dto.g.dart';

@freezed
abstract class AttachmentDto implements _$AttachmentDto {
  const AttachmentDto._();

  @JsonSerializable(explicitToJson: true)
  const factory AttachmentDto({
    required String name,
    required String description,
    required String id,
    @JsonKey(name: 'file_data') required String fileData,
  }) = _AttachmentDto;

  factory AttachmentDto.fromDomain(Attachment soilAttachment) {
    return AttachmentDto(
      id: soilAttachment.id,
      name: soilAttachment.name,
      description: soilAttachment.description,
      fileData: soilAttachment.fileData,
    );
  }

  Attachment toDomain() {
    return Attachment(
      id: id,
      name: name,
      description: description,
      fileData: fileData,
    );
  }

  factory AttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$AttachmentDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/business_partners.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';

part 'business_partners_dto.freezed.dart';

part 'business_partners_dto.g.dart';

@freezed
abstract class BusinessPartnersDto implements _$BusinessPartnersDto {
  const BusinessPartnersDto._();

  @JsonSerializable(explicitToJson: true)
  const factory BusinessPartnersDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'creationDate') required String creationDate,
    @JsonKey(name: 'language') required String language,
  }) = _BusinessPartnersDto;

  factory BusinessPartnersDto.fromDomain(BusinessPartners details) {
    return BusinessPartnersDto(
      name: details.name,
      creationDate: details.creationDate,
      language: details.language,
    );
  }

  BusinessPartners toDomain() {
    return BusinessPartners(
      name: this.name,
      creationDate: this.creationDate,
      language: this.language,
    );
  }

  factory BusinessPartnersDto.fromJson(Map<String, dynamic> json) =>
      _$BusinessPartnersDtoFromJson(json);
}

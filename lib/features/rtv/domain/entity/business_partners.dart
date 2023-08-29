import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_partners.freezed.dart';

@freezed
abstract class BusinessPartners with _$BusinessPartners {
  const factory BusinessPartners({
    required String name,
    required String creationDate,
    required String language,
  }) = _BusinessPartners;
}

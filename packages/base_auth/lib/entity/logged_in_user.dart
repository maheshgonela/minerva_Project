import 'package:freezed_annotation/freezed_annotation.dart';

part 'logged_in_user.freezed.dart';

part 'logged_in_user.g.dart';

@freezed
abstract class LoggedInUser with _$LoggedInUser {
  const factory LoggedInUser({
    required String id,
    required String name,
    @JsonKey(name: "username") required String userName,
    required String password,
    String? organization,
    @JsonKey(name: 'organization\$_identifier')
    required String organizationName,
    required String defaultOrganization,
    required String defaultWarehouse,
    required String businessPartner,
    @JsonKey(name: 'businessPartner\$_identifier')
    required String businessPartnerName,
    required String client,
    @JsonKey(name: 'partnerAddress') String? businessPartnerAddress,
    @JsonKey(name: 'locked') required bool isLocked,
  }) = _LoggedInUser;

  factory LoggedInUser.fromJson(Map<String, dynamic> json) =>
      _$LoggedInUserFromJson(json);
}

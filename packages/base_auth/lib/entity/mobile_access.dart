import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobile_access.freezed.dart';
part 'mobile_access.g.dart';

@freezed
class MobileAccess with _$MobileAccess {
  const factory MobileAccess({
    @JsonKey(name: 'gPRMobilemaster') required String id,
    @JsonKey(name: r'gPRMobilemaster$_identifier', defaultValue: '') required String name,
  }) = _MobileAccess;

  const MobileAccess._();

  factory MobileAccess.fromJson(Map<String, dynamic> json) => _$MobileAccessFromJson(json);
}

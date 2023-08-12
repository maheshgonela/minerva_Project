// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logged_in_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoggedInUser _$LoggedInUserFromJson(Map<String, dynamic> json) {
  return _LoggedInUser.fromJson(json);
}

/// @nodoc
mixin _$LoggedInUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization\$_identifier')
  String get organizationName => throw _privateConstructorUsedError;
  String get defaultOrganization => throw _privateConstructorUsedError;
  String get defaultWarehouse => throw _privateConstructorUsedError;
  String get businessPartner => throw _privateConstructorUsedError;
  String get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'partnerAddress')
  String get businessPartnerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'locked')
  bool get isLocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedInUserCopyWith<LoggedInUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedInUserCopyWith<$Res> {
  factory $LoggedInUserCopyWith(
          LoggedInUser value, $Res Function(LoggedInUser) then) =
      _$LoggedInUserCopyWithImpl<$Res, LoggedInUser>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: "username") String userName,
      String password,
      String organization,
      @JsonKey(name: 'organization\$_identifier') String organizationName,
      String defaultOrganization,
      String defaultWarehouse,
      String businessPartner,
      String client,
      @JsonKey(name: 'partnerAddress') String businessPartnerAddress,
      @JsonKey(name: 'locked') bool isLocked});
}

/// @nodoc
class _$LoggedInUserCopyWithImpl<$Res, $Val extends LoggedInUser>
    implements $LoggedInUserCopyWith<$Res> {
  _$LoggedInUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userName = null,
    Object? password = null,
    Object? organization = null,
    Object? organizationName = null,
    Object? defaultOrganization = null,
    Object? defaultWarehouse = null,
    Object? businessPartner = null,
    Object? client = null,
    Object? businessPartnerAddress = null,
    Object? isLocked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultOrganization: null == defaultOrganization
          ? _value.defaultOrganization
          : defaultOrganization // ignore: cast_nullable_to_non_nullable
              as String,
      defaultWarehouse: null == defaultWarehouse
          ? _value.defaultWarehouse
          : defaultWarehouse // ignore: cast_nullable_to_non_nullable
              as String,
      businessPartner: null == businessPartner
          ? _value.businessPartner
          : businessPartner // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String,
      businessPartnerAddress: null == businessPartnerAddress
          ? _value.businessPartnerAddress
          : businessPartnerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoggedInUserCopyWith<$Res>
    implements $LoggedInUserCopyWith<$Res> {
  factory _$$_LoggedInUserCopyWith(
          _$_LoggedInUser value, $Res Function(_$_LoggedInUser) then) =
      __$$_LoggedInUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: "username") String userName,
      String password,
      String organization,
      @JsonKey(name: 'organization\$_identifier') String organizationName,
      String defaultOrganization,
      String defaultWarehouse,
      String businessPartner,
      String client,
      @JsonKey(name: 'partnerAddress') String businessPartnerAddress,
      @JsonKey(name: 'locked') bool isLocked});
}

/// @nodoc
class __$$_LoggedInUserCopyWithImpl<$Res>
    extends _$LoggedInUserCopyWithImpl<$Res, _$_LoggedInUser>
    implements _$$_LoggedInUserCopyWith<$Res> {
  __$$_LoggedInUserCopyWithImpl(
      _$_LoggedInUser _value, $Res Function(_$_LoggedInUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userName = null,
    Object? password = null,
    Object? organization = null,
    Object? organizationName = null,
    Object? defaultOrganization = null,
    Object? defaultWarehouse = null,
    Object? businessPartner = null,
    Object? client = null,
    Object? businessPartnerAddress = null,
    Object? isLocked = null,
  }) {
    return _then(_$_LoggedInUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultOrganization: null == defaultOrganization
          ? _value.defaultOrganization
          : defaultOrganization // ignore: cast_nullable_to_non_nullable
              as String,
      defaultWarehouse: null == defaultWarehouse
          ? _value.defaultWarehouse
          : defaultWarehouse // ignore: cast_nullable_to_non_nullable
              as String,
      businessPartner: null == businessPartner
          ? _value.businessPartner
          : businessPartner // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String,
      businessPartnerAddress: null == businessPartnerAddress
          ? _value.businessPartnerAddress
          : businessPartnerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoggedInUser implements _LoggedInUser {
  const _$_LoggedInUser(
      {required this.id,
      required this.name,
      @JsonKey(name: "username")
          required this.userName,
      required this.password,
      required this.organization,
      @JsonKey(name: 'organization\$_identifier')
          required this.organizationName,
      required this.defaultOrganization,
      required this.defaultWarehouse,
      required this.businessPartner,
      required this.client,
      @JsonKey(name: 'partnerAddress')
          required this.businessPartnerAddress,
      @JsonKey(name: 'locked')
          required this.isLocked});

  factory _$_LoggedInUser.fromJson(Map<String, dynamic> json) =>
      _$$_LoggedInUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: "username")
  final String userName;
  @override
  final String password;
  @override
  final String organization;
  @override
  @JsonKey(name: 'organization\$_identifier')
  final String organizationName;
  @override
  final String defaultOrganization;
  @override
  final String defaultWarehouse;
  @override
  final String businessPartner;
  @override
  final String client;
  @override
  @JsonKey(name: 'partnerAddress')
  final String businessPartnerAddress;
  @override
  @JsonKey(name: 'locked')
  final bool isLocked;

  @override
  String toString() {
    return 'LoggedInUser(id: $id, name: $name, userName: $userName, password: $password, organization: $organization, organizationName: $organizationName, defaultOrganization: $defaultOrganization, defaultWarehouse: $defaultWarehouse, businessPartner: $businessPartner, client: $client, businessPartnerAddress: $businessPartnerAddress, isLocked: $isLocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedInUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName) &&
            (identical(other.defaultOrganization, defaultOrganization) ||
                other.defaultOrganization == defaultOrganization) &&
            (identical(other.defaultWarehouse, defaultWarehouse) ||
                other.defaultWarehouse == defaultWarehouse) &&
            (identical(other.businessPartner, businessPartner) ||
                other.businessPartner == businessPartner) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.businessPartnerAddress, businessPartnerAddress) ||
                other.businessPartnerAddress == businessPartnerAddress) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      userName,
      password,
      organization,
      organizationName,
      defaultOrganization,
      defaultWarehouse,
      businessPartner,
      client,
      businessPartnerAddress,
      isLocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedInUserCopyWith<_$_LoggedInUser> get copyWith =>
      __$$_LoggedInUserCopyWithImpl<_$_LoggedInUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggedInUserToJson(
      this,
    );
  }
}

abstract class _LoggedInUser implements LoggedInUser {
  const factory _LoggedInUser(
      {required final String id,
      required final String name,
      @JsonKey(name: "username")
          required final String userName,
      required final String password,
      required final String organization,
      @JsonKey(name: 'organization\$_identifier')
          required final String organizationName,
      required final String defaultOrganization,
      required final String defaultWarehouse,
      required final String businessPartner,
      required final String client,
      @JsonKey(name: 'partnerAddress')
          required final String businessPartnerAddress,
      @JsonKey(name: 'locked')
          required final bool isLocked}) = _$_LoggedInUser;

  factory _LoggedInUser.fromJson(Map<String, dynamic> json) =
      _$_LoggedInUser.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: "username")
  String get userName;
  @override
  String get password;
  @override
  String get organization;
  @override
  @JsonKey(name: 'organization\$_identifier')
  String get organizationName;
  @override
  String get defaultOrganization;
  @override
  String get defaultWarehouse;
  @override
  String get businessPartner;
  @override
  String get client;
  @override
  @JsonKey(name: 'partnerAddress')
  String get businessPartnerAddress;
  @override
  @JsonKey(name: 'locked')
  bool get isLocked;
  @override
  @JsonKey(ignore: true)
  _$$_LoggedInUserCopyWith<_$_LoggedInUser> get copyWith =>
      throw _privateConstructorUsedError;
}

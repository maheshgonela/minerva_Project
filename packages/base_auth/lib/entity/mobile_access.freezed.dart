// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobile_access.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MobileAccess _$MobileAccessFromJson(Map<String, dynamic> json) {
  return _MobileAccess.fromJson(json);
}

/// @nodoc
mixin _$MobileAccess {
  @JsonKey(name: 'gPRMobilemaster')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: r'gPRMobilemaster$_identifier', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileAccessCopyWith<MobileAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileAccessCopyWith<$Res> {
  factory $MobileAccessCopyWith(
          MobileAccess value, $Res Function(MobileAccess) then) =
      _$MobileAccessCopyWithImpl<$Res, MobileAccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'gPRMobilemaster')
          String id,
      @JsonKey(name: r'gPRMobilemaster$_identifier', defaultValue: '')
          String name});
}

/// @nodoc
class _$MobileAccessCopyWithImpl<$Res, $Val extends MobileAccess>
    implements $MobileAccessCopyWith<$Res> {
  _$MobileAccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MobileAccessCopyWith<$Res>
    implements $MobileAccessCopyWith<$Res> {
  factory _$$_MobileAccessCopyWith(
          _$_MobileAccess value, $Res Function(_$_MobileAccess) then) =
      __$$_MobileAccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gPRMobilemaster')
          String id,
      @JsonKey(name: r'gPRMobilemaster$_identifier', defaultValue: '')
          String name});
}

/// @nodoc
class __$$_MobileAccessCopyWithImpl<$Res>
    extends _$MobileAccessCopyWithImpl<$Res, _$_MobileAccess>
    implements _$$_MobileAccessCopyWith<$Res> {
  __$$_MobileAccessCopyWithImpl(
      _$_MobileAccess _value, $Res Function(_$_MobileAccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_MobileAccess(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MobileAccess extends _MobileAccess {
  const _$_MobileAccess(
      {@JsonKey(name: 'gPRMobilemaster')
          required this.id,
      @JsonKey(name: r'gPRMobilemaster$_identifier', defaultValue: '')
          required this.name})
      : super._();

  factory _$_MobileAccess.fromJson(Map<String, dynamic> json) =>
      _$$_MobileAccessFromJson(json);

  @override
  @JsonKey(name: 'gPRMobilemaster')
  final String id;
  @override
  @JsonKey(name: r'gPRMobilemaster$_identifier', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'MobileAccess(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MobileAccess &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MobileAccessCopyWith<_$_MobileAccess> get copyWith =>
      __$$_MobileAccessCopyWithImpl<_$_MobileAccess>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MobileAccessToJson(
      this,
    );
  }
}

abstract class _MobileAccess extends MobileAccess {
  const factory _MobileAccess(
      {@JsonKey(name: 'gPRMobilemaster')
          required final String id,
      @JsonKey(name: r'gPRMobilemaster$_identifier', defaultValue: '')
          required final String name}) = _$_MobileAccess;
  const _MobileAccess._() : super._();

  factory _MobileAccess.fromJson(Map<String, dynamic> json) =
      _$_MobileAccess.fromJson;

  @override
  @JsonKey(name: 'gPRMobilemaster')
  String get id;
  @override
  @JsonKey(name: r'gPRMobilemaster$_identifier', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MobileAccessCopyWith<_$_MobileAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

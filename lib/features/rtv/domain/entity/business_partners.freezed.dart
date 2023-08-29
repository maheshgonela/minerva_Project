// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_partners.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BusinessPartners {
  String get name => throw _privateConstructorUsedError;
  String get creationDate => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusinessPartnersCopyWith<BusinessPartners> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessPartnersCopyWith<$Res> {
  factory $BusinessPartnersCopyWith(
          BusinessPartners value, $Res Function(BusinessPartners) then) =
      _$BusinessPartnersCopyWithImpl<$Res, BusinessPartners>;
  @useResult
  $Res call({String name, String creationDate, String language});
}

/// @nodoc
class _$BusinessPartnersCopyWithImpl<$Res, $Val extends BusinessPartners>
    implements $BusinessPartnersCopyWith<$Res> {
  _$BusinessPartnersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? creationDate = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusinessPartnersCopyWith<$Res>
    implements $BusinessPartnersCopyWith<$Res> {
  factory _$$_BusinessPartnersCopyWith(
          _$_BusinessPartners value, $Res Function(_$_BusinessPartners) then) =
      __$$_BusinessPartnersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String creationDate, String language});
}

/// @nodoc
class __$$_BusinessPartnersCopyWithImpl<$Res>
    extends _$BusinessPartnersCopyWithImpl<$Res, _$_BusinessPartners>
    implements _$$_BusinessPartnersCopyWith<$Res> {
  __$$_BusinessPartnersCopyWithImpl(
      _$_BusinessPartners _value, $Res Function(_$_BusinessPartners) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? creationDate = null,
    Object? language = null,
  }) {
    return _then(_$_BusinessPartners(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BusinessPartners implements _BusinessPartners {
  const _$_BusinessPartners(
      {required this.name, required this.creationDate, required this.language});

  @override
  final String name;
  @override
  final String creationDate;
  @override
  final String language;

  @override
  String toString() {
    return 'BusinessPartners(name: $name, creationDate: $creationDate, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessPartners &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, creationDate, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessPartnersCopyWith<_$_BusinessPartners> get copyWith =>
      __$$_BusinessPartnersCopyWithImpl<_$_BusinessPartners>(this, _$identity);
}

abstract class _BusinessPartners implements BusinessPartners {
  const factory _BusinessPartners(
      {required final String name,
      required final String creationDate,
      required final String language}) = _$_BusinessPartners;

  @override
  String get name;
  @override
  String get creationDate;
  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessPartnersCopyWith<_$_BusinessPartners> get copyWith =>
      throw _privateConstructorUsedError;
}

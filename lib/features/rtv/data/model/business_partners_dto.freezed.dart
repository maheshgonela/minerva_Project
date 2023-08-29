// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_partners_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessPartnersDto _$BusinessPartnersDtoFromJson(Map<String, dynamic> json) {
  return _BusinessPartnersDto.fromJson(json);
}

/// @nodoc
mixin _$BusinessPartnersDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'creationDate')
  String get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessPartnersDtoCopyWith<BusinessPartnersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessPartnersDtoCopyWith<$Res> {
  factory $BusinessPartnersDtoCopyWith(
          BusinessPartnersDto value, $Res Function(BusinessPartnersDto) then) =
      _$BusinessPartnersDtoCopyWithImpl<$Res, BusinessPartnersDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'creationDate') String creationDate,
      @JsonKey(name: 'language') String language});
}

/// @nodoc
class _$BusinessPartnersDtoCopyWithImpl<$Res, $Val extends BusinessPartnersDto>
    implements $BusinessPartnersDtoCopyWith<$Res> {
  _$BusinessPartnersDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_BusinessPartnersDtoCopyWith<$Res>
    implements $BusinessPartnersDtoCopyWith<$Res> {
  factory _$$_BusinessPartnersDtoCopyWith(_$_BusinessPartnersDto value,
          $Res Function(_$_BusinessPartnersDto) then) =
      __$$_BusinessPartnersDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'creationDate') String creationDate,
      @JsonKey(name: 'language') String language});
}

/// @nodoc
class __$$_BusinessPartnersDtoCopyWithImpl<$Res>
    extends _$BusinessPartnersDtoCopyWithImpl<$Res, _$_BusinessPartnersDto>
    implements _$$_BusinessPartnersDtoCopyWith<$Res> {
  __$$_BusinessPartnersDtoCopyWithImpl(_$_BusinessPartnersDto _value,
      $Res Function(_$_BusinessPartnersDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? creationDate = null,
    Object? language = null,
  }) {
    return _then(_$_BusinessPartnersDto(
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

@JsonSerializable(explicitToJson: true)
class _$_BusinessPartnersDto extends _BusinessPartnersDto {
  const _$_BusinessPartnersDto(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'creationDate') required this.creationDate,
      @JsonKey(name: 'language') required this.language})
      : super._();

  factory _$_BusinessPartnersDto.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessPartnersDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'creationDate')
  final String creationDate;
  @override
  @JsonKey(name: 'language')
  final String language;

  @override
  String toString() {
    return 'BusinessPartnersDto(name: $name, creationDate: $creationDate, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessPartnersDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, creationDate, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessPartnersDtoCopyWith<_$_BusinessPartnersDto> get copyWith =>
      __$$_BusinessPartnersDtoCopyWithImpl<_$_BusinessPartnersDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessPartnersDtoToJson(
      this,
    );
  }
}

abstract class _BusinessPartnersDto extends BusinessPartnersDto {
  const factory _BusinessPartnersDto(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'creationDate') required final String creationDate,
          @JsonKey(name: 'language') required final String language}) =
      _$_BusinessPartnersDto;
  const _BusinessPartnersDto._() : super._();

  factory _BusinessPartnersDto.fromJson(Map<String, dynamic> json) =
      _$_BusinessPartnersDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'creationDate')
  String get creationDate;
  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessPartnersDtoCopyWith<_$_BusinessPartnersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

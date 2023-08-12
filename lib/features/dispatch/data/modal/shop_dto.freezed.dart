// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopDto _$ShopDtoFromJson(Map<String, dynamic> json) {
  return _ShopDto.fromJson(json);
}

/// @nodoc
mixin _$ShopDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopDtoCopyWith<ShopDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDtoCopyWith<$Res> {
  factory $ShopDtoCopyWith(ShopDto value, $Res Function(ShopDto) then) =
      _$ShopDtoCopyWithImpl<$Res, ShopDto>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ShopDtoCopyWithImpl<$Res, $Val extends ShopDto>
    implements $ShopDtoCopyWith<$Res> {
  _$ShopDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_ShopDtoCopyWith<$Res> implements $ShopDtoCopyWith<$Res> {
  factory _$$_ShopDtoCopyWith(
          _$_ShopDto value, $Res Function(_$_ShopDto) then) =
      __$$_ShopDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_ShopDtoCopyWithImpl<$Res>
    extends _$ShopDtoCopyWithImpl<$Res, _$_ShopDto>
    implements _$$_ShopDtoCopyWith<$Res> {
  __$$_ShopDtoCopyWithImpl(_$_ShopDto _value, $Res Function(_$_ShopDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ShopDto(
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

@JsonSerializable(explicitToJson: true)
class _$_ShopDto extends _ShopDto {
  const _$_ShopDto({required this.id, required this.name}) : super._();

  factory _$_ShopDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShopDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ShopDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopDtoCopyWith<_$_ShopDto> get copyWith =>
      __$$_ShopDtoCopyWithImpl<_$_ShopDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopDtoToJson(
      this,
    );
  }
}

abstract class _ShopDto extends ShopDto {
  const factory _ShopDto(
      {required final String id, required final String name}) = _$_ShopDto;
  const _ShopDto._() : super._();

  factory _ShopDto.fromJson(Map<String, dynamic> json) = _$_ShopDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ShopDtoCopyWith<_$_ShopDto> get copyWith =>
      throw _privateConstructorUsedError;
}

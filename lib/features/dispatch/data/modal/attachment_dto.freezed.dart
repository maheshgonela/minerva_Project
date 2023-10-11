// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttachmentDto _$AttachmentDtoFromJson(Map<String, dynamic> json) {
  return _AttachmentDto.fromJson(json);
}

/// @nodoc
mixin _$AttachmentDto {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_data')
  String get fileData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentDtoCopyWith<AttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentDtoCopyWith<$Res> {
  factory $AttachmentDtoCopyWith(
          AttachmentDto value, $Res Function(AttachmentDto) then) =
      _$AttachmentDtoCopyWithImpl<$Res, AttachmentDto>;
  @useResult
  $Res call(
      {String name,
      String description,
      String id,
      @JsonKey(name: 'file_data') String fileData});
}

/// @nodoc
class _$AttachmentDtoCopyWithImpl<$Res, $Val extends AttachmentDto>
    implements $AttachmentDtoCopyWith<$Res> {
  _$AttachmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
    Object? fileData = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fileData: null == fileData
          ? _value.fileData
          : fileData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentDtoImplCopyWith<$Res>
    implements $AttachmentDtoCopyWith<$Res> {
  factory _$$AttachmentDtoImplCopyWith(
          _$AttachmentDtoImpl value, $Res Function(_$AttachmentDtoImpl) then) =
      __$$AttachmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String id,
      @JsonKey(name: 'file_data') String fileData});
}

/// @nodoc
class __$$AttachmentDtoImplCopyWithImpl<$Res>
    extends _$AttachmentDtoCopyWithImpl<$Res, _$AttachmentDtoImpl>
    implements _$$AttachmentDtoImplCopyWith<$Res> {
  __$$AttachmentDtoImplCopyWithImpl(
      _$AttachmentDtoImpl _value, $Res Function(_$AttachmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
    Object? fileData = null,
  }) {
    return _then(_$AttachmentDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fileData: null == fileData
          ? _value.fileData
          : fileData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AttachmentDtoImpl extends _AttachmentDto {
  const _$AttachmentDtoImpl(
      {required this.name,
      required this.description,
      required this.id,
      @JsonKey(name: 'file_data') required this.fileData})
      : super._();

  factory _$AttachmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String id;
  @override
  @JsonKey(name: 'file_data')
  final String fileData;

  @override
  String toString() {
    return 'AttachmentDto(name: $name, description: $description, id: $id, fileData: $fileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileData, fileData) ||
                other.fileData == fileData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, id, fileData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentDtoImplCopyWith<_$AttachmentDtoImpl> get copyWith =>
      __$$AttachmentDtoImplCopyWithImpl<_$AttachmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentDtoImplToJson(
      this,
    );
  }
}

abstract class _AttachmentDto extends AttachmentDto {
  const factory _AttachmentDto(
          {required final String name,
          required final String description,
          required final String id,
          @JsonKey(name: 'file_data') required final String fileData}) =
      _$AttachmentDtoImpl;
  const _AttachmentDto._() : super._();

  factory _AttachmentDto.fromJson(Map<String, dynamic> json) =
      _$AttachmentDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get id;
  @override
  @JsonKey(name: 'file_data')
  String get fileData;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentDtoImplCopyWith<_$AttachmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

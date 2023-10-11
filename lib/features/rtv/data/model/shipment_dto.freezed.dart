// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipmentDto _$ShipmentDtoFromJson(Map<String, dynamic> json) {
  return _ShipmentDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentDto {
  String get id => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  String get documentNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'businessPartner')
  String get bpId => throw _privateConstructorUsedError;
  @JsonKey(name: 'businessPartner\$_identifier')
  String get bpName => throw _privateConstructorUsedError;
  @JsonKey(name: 'partnerAddress\$_identifier')
  String get partnerAddress => throw _privateConstructorUsedError;
  String get movementDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentDtoCopyWith<ShipmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentDtoCopyWith<$Res> {
  factory $ShipmentDtoCopyWith(
          ShipmentDto value, $Res Function(ShipmentDto) then) =
      _$ShipmentDtoCopyWithImpl<$Res, ShipmentDto>;
  @useResult
  $Res call(
      {String id,
      String organization,
      String documentNo,
      @JsonKey(name: 'businessPartner') String bpId,
      @JsonKey(name: 'businessPartner\$_identifier') String bpName,
      @JsonKey(name: 'partnerAddress\$_identifier') String partnerAddress,
      String movementDate,
      String? description});
}

/// @nodoc
class _$ShipmentDtoCopyWithImpl<$Res, $Val extends ShipmentDto>
    implements $ShipmentDtoCopyWith<$Res> {
  _$ShipmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = null,
    Object? documentNo = null,
    Object? bpId = null,
    Object? bpName = null,
    Object? partnerAddress = null,
    Object? movementDate = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      documentNo: null == documentNo
          ? _value.documentNo
          : documentNo // ignore: cast_nullable_to_non_nullable
              as String,
      bpId: null == bpId
          ? _value.bpId
          : bpId // ignore: cast_nullable_to_non_nullable
              as String,
      bpName: null == bpName
          ? _value.bpName
          : bpName // ignore: cast_nullable_to_non_nullable
              as String,
      partnerAddress: null == partnerAddress
          ? _value.partnerAddress
          : partnerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      movementDate: null == movementDate
          ? _value.movementDate
          : movementDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentDtoImplCopyWith<$Res>
    implements $ShipmentDtoCopyWith<$Res> {
  factory _$$ShipmentDtoImplCopyWith(
          _$ShipmentDtoImpl value, $Res Function(_$ShipmentDtoImpl) then) =
      __$$ShipmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String organization,
      String documentNo,
      @JsonKey(name: 'businessPartner') String bpId,
      @JsonKey(name: 'businessPartner\$_identifier') String bpName,
      @JsonKey(name: 'partnerAddress\$_identifier') String partnerAddress,
      String movementDate,
      String? description});
}

/// @nodoc
class __$$ShipmentDtoImplCopyWithImpl<$Res>
    extends _$ShipmentDtoCopyWithImpl<$Res, _$ShipmentDtoImpl>
    implements _$$ShipmentDtoImplCopyWith<$Res> {
  __$$ShipmentDtoImplCopyWithImpl(
      _$ShipmentDtoImpl _value, $Res Function(_$ShipmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = null,
    Object? documentNo = null,
    Object? bpId = null,
    Object? bpName = null,
    Object? partnerAddress = null,
    Object? movementDate = null,
    Object? description = freezed,
  }) {
    return _then(_$ShipmentDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      documentNo: null == documentNo
          ? _value.documentNo
          : documentNo // ignore: cast_nullable_to_non_nullable
              as String,
      bpId: null == bpId
          ? _value.bpId
          : bpId // ignore: cast_nullable_to_non_nullable
              as String,
      bpName: null == bpName
          ? _value.bpName
          : bpName // ignore: cast_nullable_to_non_nullable
              as String,
      partnerAddress: null == partnerAddress
          ? _value.partnerAddress
          : partnerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      movementDate: null == movementDate
          ? _value.movementDate
          : movementDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ShipmentDtoImpl extends _ShipmentDto {
  const _$ShipmentDtoImpl(
      {required this.id,
      required this.organization,
      required this.documentNo,
      @JsonKey(name: 'businessPartner') required this.bpId,
      @JsonKey(name: 'businessPartner\$_identifier') required this.bpName,
      @JsonKey(name: 'partnerAddress\$_identifier')
      required this.partnerAddress,
      required this.movementDate,
      this.description})
      : super._();

  factory _$ShipmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String organization;
  @override
  final String documentNo;
  @override
  @JsonKey(name: 'businessPartner')
  final String bpId;
  @override
  @JsonKey(name: 'businessPartner\$_identifier')
  final String bpName;
  @override
  @JsonKey(name: 'partnerAddress\$_identifier')
  final String partnerAddress;
  @override
  final String movementDate;
  @override
  final String? description;

  @override
  String toString() {
    return 'ShipmentDto(id: $id, organization: $organization, documentNo: $documentNo, bpId: $bpId, bpName: $bpName, partnerAddress: $partnerAddress, movementDate: $movementDate, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.documentNo, documentNo) ||
                other.documentNo == documentNo) &&
            (identical(other.bpId, bpId) || other.bpId == bpId) &&
            (identical(other.bpName, bpName) || other.bpName == bpName) &&
            (identical(other.partnerAddress, partnerAddress) ||
                other.partnerAddress == partnerAddress) &&
            (identical(other.movementDate, movementDate) ||
                other.movementDate == movementDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, organization, documentNo,
      bpId, bpName, partnerAddress, movementDate, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentDtoImplCopyWith<_$ShipmentDtoImpl> get copyWith =>
      __$$ShipmentDtoImplCopyWithImpl<_$ShipmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentDtoImplToJson(
      this,
    );
  }
}

abstract class _ShipmentDto extends ShipmentDto {
  const factory _ShipmentDto(
      {required final String id,
      required final String organization,
      required final String documentNo,
      @JsonKey(name: 'businessPartner') required final String bpId,
      @JsonKey(name: 'businessPartner\$_identifier')
      required final String bpName,
      @JsonKey(name: 'partnerAddress\$_identifier')
      required final String partnerAddress,
      required final String movementDate,
      final String? description}) = _$ShipmentDtoImpl;
  const _ShipmentDto._() : super._();

  factory _ShipmentDto.fromJson(Map<String, dynamic> json) =
      _$ShipmentDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get organization;
  @override
  String get documentNo;
  @override
  @JsonKey(name: 'businessPartner')
  String get bpId;
  @override
  @JsonKey(name: 'businessPartner\$_identifier')
  String get bpName;
  @override
  @JsonKey(name: 'partnerAddress\$_identifier')
  String get partnerAddress;
  @override
  String get movementDate;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentDtoImplCopyWith<_$ShipmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

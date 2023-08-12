// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Shipment {
  String get id => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  String get documentNo => throw _privateConstructorUsedError;
  String get bpId => throw _privateConstructorUsedError;
  String get bpName => throw _privateConstructorUsedError;
  String get partnerAddress => throw _privateConstructorUsedError;
  String get movementDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentCopyWith<Shipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentCopyWith<$Res> {
  factory $ShipmentCopyWith(Shipment value, $Res Function(Shipment) then) =
      _$ShipmentCopyWithImpl<$Res, Shipment>;
  @useResult
  $Res call(
      {String id,
      String organization,
      String documentNo,
      String bpId,
      String bpName,
      String partnerAddress,
      String movementDate,
      String? description});
}

/// @nodoc
class _$ShipmentCopyWithImpl<$Res, $Val extends Shipment>
    implements $ShipmentCopyWith<$Res> {
  _$ShipmentCopyWithImpl(this._value, this._then);

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
abstract class _$$_ShipmentCopyWith<$Res> implements $ShipmentCopyWith<$Res> {
  factory _$$_ShipmentCopyWith(
          _$_Shipment value, $Res Function(_$_Shipment) then) =
      __$$_ShipmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String organization,
      String documentNo,
      String bpId,
      String bpName,
      String partnerAddress,
      String movementDate,
      String? description});
}

/// @nodoc
class __$$_ShipmentCopyWithImpl<$Res>
    extends _$ShipmentCopyWithImpl<$Res, _$_Shipment>
    implements _$$_ShipmentCopyWith<$Res> {
  __$$_ShipmentCopyWithImpl(
      _$_Shipment _value, $Res Function(_$_Shipment) _then)
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
    return _then(_$_Shipment(
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

class _$_Shipment implements _Shipment {
  const _$_Shipment(
      {required this.id,
      required this.organization,
      required this.documentNo,
      required this.bpId,
      required this.bpName,
      required this.partnerAddress,
      required this.movementDate,
      this.description});

  @override
  final String id;
  @override
  final String organization;
  @override
  final String documentNo;
  @override
  final String bpId;
  @override
  final String bpName;
  @override
  final String partnerAddress;
  @override
  final String movementDate;
  @override
  final String? description;

  @override
  String toString() {
    return 'Shipment(id: $id, organization: $organization, documentNo: $documentNo, bpId: $bpId, bpName: $bpName, partnerAddress: $partnerAddress, movementDate: $movementDate, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shipment &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, organization, documentNo,
      bpId, bpName, partnerAddress, movementDate, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipmentCopyWith<_$_Shipment> get copyWith =>
      __$$_ShipmentCopyWithImpl<_$_Shipment>(this, _$identity);
}

abstract class _Shipment implements Shipment {
  const factory _Shipment(
      {required final String id,
      required final String organization,
      required final String documentNo,
      required final String bpId,
      required final String bpName,
      required final String partnerAddress,
      required final String movementDate,
      final String? description}) = _$_Shipment;

  @override
  String get id;
  @override
  String get organization;
  @override
  String get documentNo;
  @override
  String get bpId;
  @override
  String get bpName;
  @override
  String get partnerAddress;
  @override
  String get movementDate;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentCopyWith<_$_Shipment> get copyWith =>
      throw _privateConstructorUsedError;
}

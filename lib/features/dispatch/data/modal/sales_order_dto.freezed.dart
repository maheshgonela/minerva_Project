// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesOrderDto _$SalesOrderDtoFromJson(Map<String, dynamic> json) {
  return _SalesOrderDto.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderDto {
  String get id => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  String get documentNo => throw _privateConstructorUsedError;
  String get businessPartner => throw _privateConstructorUsedError;
  @JsonKey(name: 'partnerAddress')
  String get businessPartnerLocation => throw _privateConstructorUsedError;
  String get warehouse => throw _privateConstructorUsedError;
  String get scheduledDeliveryDate => throw _privateConstructorUsedError;
  String? get deliveryLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderDtoCopyWith<SalesOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderDtoCopyWith<$Res> {
  factory $SalesOrderDtoCopyWith(
          SalesOrderDto value, $Res Function(SalesOrderDto) then) =
      _$SalesOrderDtoCopyWithImpl<$Res, SalesOrderDto>;
  @useResult
  $Res call(
      {String id,
      String organization,
      String documentNo,
      String businessPartner,
      @JsonKey(name: 'partnerAddress') String businessPartnerLocation,
      String warehouse,
      String scheduledDeliveryDate,
      String? deliveryLocation});
}

/// @nodoc
class _$SalesOrderDtoCopyWithImpl<$Res, $Val extends SalesOrderDto>
    implements $SalesOrderDtoCopyWith<$Res> {
  _$SalesOrderDtoCopyWithImpl(this._value, this._then);

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
    Object? businessPartner = null,
    Object? businessPartnerLocation = null,
    Object? warehouse = null,
    Object? scheduledDeliveryDate = null,
    Object? deliveryLocation = freezed,
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
      businessPartner: null == businessPartner
          ? _value.businessPartner
          : businessPartner // ignore: cast_nullable_to_non_nullable
              as String,
      businessPartnerLocation: null == businessPartnerLocation
          ? _value.businessPartnerLocation
          : businessPartnerLocation // ignore: cast_nullable_to_non_nullable
              as String,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledDeliveryDate: null == scheduledDeliveryDate
          ? _value.scheduledDeliveryDate
          : scheduledDeliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesOrderDtoImplCopyWith<$Res>
    implements $SalesOrderDtoCopyWith<$Res> {
  factory _$$SalesOrderDtoImplCopyWith(
          _$SalesOrderDtoImpl value, $Res Function(_$SalesOrderDtoImpl) then) =
      __$$SalesOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String organization,
      String documentNo,
      String businessPartner,
      @JsonKey(name: 'partnerAddress') String businessPartnerLocation,
      String warehouse,
      String scheduledDeliveryDate,
      String? deliveryLocation});
}

/// @nodoc
class __$$SalesOrderDtoImplCopyWithImpl<$Res>
    extends _$SalesOrderDtoCopyWithImpl<$Res, _$SalesOrderDtoImpl>
    implements _$$SalesOrderDtoImplCopyWith<$Res> {
  __$$SalesOrderDtoImplCopyWithImpl(
      _$SalesOrderDtoImpl _value, $Res Function(_$SalesOrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = null,
    Object? documentNo = null,
    Object? businessPartner = null,
    Object? businessPartnerLocation = null,
    Object? warehouse = null,
    Object? scheduledDeliveryDate = null,
    Object? deliveryLocation = freezed,
  }) {
    return _then(_$SalesOrderDtoImpl(
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
      businessPartner: null == businessPartner
          ? _value.businessPartner
          : businessPartner // ignore: cast_nullable_to_non_nullable
              as String,
      businessPartnerLocation: null == businessPartnerLocation
          ? _value.businessPartnerLocation
          : businessPartnerLocation // ignore: cast_nullable_to_non_nullable
              as String,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledDeliveryDate: null == scheduledDeliveryDate
          ? _value.scheduledDeliveryDate
          : scheduledDeliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SalesOrderDtoImpl extends _SalesOrderDto {
  const _$SalesOrderDtoImpl(
      {required this.id,
      required this.organization,
      required this.documentNo,
      required this.businessPartner,
      @JsonKey(name: 'partnerAddress') required this.businessPartnerLocation,
      required this.warehouse,
      required this.scheduledDeliveryDate,
      this.deliveryLocation})
      : super._();

  factory _$SalesOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String organization;
  @override
  final String documentNo;
  @override
  final String businessPartner;
  @override
  @JsonKey(name: 'partnerAddress')
  final String businessPartnerLocation;
  @override
  final String warehouse;
  @override
  final String scheduledDeliveryDate;
  @override
  final String? deliveryLocation;

  @override
  String toString() {
    return 'SalesOrderDto(id: $id, organization: $organization, documentNo: $documentNo, businessPartner: $businessPartner, businessPartnerLocation: $businessPartnerLocation, warehouse: $warehouse, scheduledDeliveryDate: $scheduledDeliveryDate, deliveryLocation: $deliveryLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.documentNo, documentNo) ||
                other.documentNo == documentNo) &&
            (identical(other.businessPartner, businessPartner) ||
                other.businessPartner == businessPartner) &&
            (identical(
                    other.businessPartnerLocation, businessPartnerLocation) ||
                other.businessPartnerLocation == businessPartnerLocation) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse) &&
            (identical(other.scheduledDeliveryDate, scheduledDeliveryDate) ||
                other.scheduledDeliveryDate == scheduledDeliveryDate) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organization,
      documentNo,
      businessPartner,
      businessPartnerLocation,
      warehouse,
      scheduledDeliveryDate,
      deliveryLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderDtoImplCopyWith<_$SalesOrderDtoImpl> get copyWith =>
      __$$SalesOrderDtoImplCopyWithImpl<_$SalesOrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderDto extends SalesOrderDto {
  const factory _SalesOrderDto(
      {required final String id,
      required final String organization,
      required final String documentNo,
      required final String businessPartner,
      @JsonKey(name: 'partnerAddress')
      required final String businessPartnerLocation,
      required final String warehouse,
      required final String scheduledDeliveryDate,
      final String? deliveryLocation}) = _$SalesOrderDtoImpl;
  const _SalesOrderDto._() : super._();

  factory _SalesOrderDto.fromJson(Map<String, dynamic> json) =
      _$SalesOrderDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get organization;
  @override
  String get documentNo;
  @override
  String get businessPartner;
  @override
  @JsonKey(name: 'partnerAddress')
  String get businessPartnerLocation;
  @override
  String get warehouse;
  @override
  String get scheduledDeliveryDate;
  @override
  String? get deliveryLocation;
  @override
  @JsonKey(ignore: true)
  _$$SalesOrderDtoImplCopyWith<_$SalesOrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

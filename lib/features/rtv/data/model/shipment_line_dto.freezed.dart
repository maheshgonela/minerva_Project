// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_line_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipmentLineDto _$ShipmentLineDtoFromJson(Map<String, dynamic> json) {
  return _ShipmentLineDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentLineDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product\$_identifier')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'uOM')
  String get uomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'uOM\$_identifier')
  String get storageBinName => throw _privateConstructorUsedError;
  @JsonKey(name: 'movementQuantity')
  double get movementQty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentLineDtoCopyWith<ShipmentLineDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentLineDtoCopyWith<$Res> {
  factory $ShipmentLineDtoCopyWith(
          ShipmentLineDto value, $Res Function(ShipmentLineDto) then) =
      _$ShipmentLineDtoCopyWithImpl<$Res, ShipmentLineDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'product') String productId,
      @JsonKey(name: 'product\$_identifier') String productName,
      @JsonKey(name: 'uOM') String uomName,
      @JsonKey(name: 'uOM\$_identifier') String storageBinName,
      @JsonKey(name: 'movementQuantity') double movementQty});
}

/// @nodoc
class _$ShipmentLineDtoCopyWithImpl<$Res, $Val extends ShipmentLineDto>
    implements $ShipmentLineDtoCopyWith<$Res> {
  _$ShipmentLineDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? uomName = null,
    Object? storageBinName = null,
    Object? movementQty = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      uomName: null == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String,
      storageBinName: null == storageBinName
          ? _value.storageBinName
          : storageBinName // ignore: cast_nullable_to_non_nullable
              as String,
      movementQty: null == movementQty
          ? _value.movementQty
          : movementQty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipmentLineDtoCopyWith<$Res>
    implements $ShipmentLineDtoCopyWith<$Res> {
  factory _$$_ShipmentLineDtoCopyWith(
          _$_ShipmentLineDto value, $Res Function(_$_ShipmentLineDto) then) =
      __$$_ShipmentLineDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'product') String productId,
      @JsonKey(name: 'product\$_identifier') String productName,
      @JsonKey(name: 'uOM') String uomName,
      @JsonKey(name: 'uOM\$_identifier') String storageBinName,
      @JsonKey(name: 'movementQuantity') double movementQty});
}

/// @nodoc
class __$$_ShipmentLineDtoCopyWithImpl<$Res>
    extends _$ShipmentLineDtoCopyWithImpl<$Res, _$_ShipmentLineDto>
    implements _$$_ShipmentLineDtoCopyWith<$Res> {
  __$$_ShipmentLineDtoCopyWithImpl(
      _$_ShipmentLineDto _value, $Res Function(_$_ShipmentLineDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? uomName = null,
    Object? storageBinName = null,
    Object? movementQty = null,
  }) {
    return _then(_$_ShipmentLineDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      uomName: null == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String,
      storageBinName: null == storageBinName
          ? _value.storageBinName
          : storageBinName // ignore: cast_nullable_to_non_nullable
              as String,
      movementQty: null == movementQty
          ? _value.movementQty
          : movementQty // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShipmentLineDto extends _ShipmentLineDto {
  const _$_ShipmentLineDto(
      {required this.id,
      @JsonKey(name: 'product') required this.productId,
      @JsonKey(name: 'product\$_identifier') required this.productName,
      @JsonKey(name: 'uOM') required this.uomName,
      @JsonKey(name: 'uOM\$_identifier') required this.storageBinName,
      @JsonKey(name: 'movementQuantity') required this.movementQty})
      : super._();

  factory _$_ShipmentLineDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShipmentLineDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'product')
  final String productId;
  @override
  @JsonKey(name: 'product\$_identifier')
  final String productName;
  @override
  @JsonKey(name: 'uOM')
  final String uomName;
  @override
  @JsonKey(name: 'uOM\$_identifier')
  final String storageBinName;
  @override
  @JsonKey(name: 'movementQuantity')
  final double movementQty;

  @override
  String toString() {
    return 'ShipmentLineDto(id: $id, productId: $productId, productName: $productName, uomName: $uomName, storageBinName: $storageBinName, movementQty: $movementQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipmentLineDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.uomName, uomName) || other.uomName == uomName) &&
            (identical(other.storageBinName, storageBinName) ||
                other.storageBinName == storageBinName) &&
            (identical(other.movementQty, movementQty) ||
                other.movementQty == movementQty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, productId, productName,
      uomName, storageBinName, movementQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipmentLineDtoCopyWith<_$_ShipmentLineDto> get copyWith =>
      __$$_ShipmentLineDtoCopyWithImpl<_$_ShipmentLineDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipmentLineDtoToJson(
      this,
    );
  }
}

abstract class _ShipmentLineDto extends ShipmentLineDto {
  const factory _ShipmentLineDto(
      {required final String id,
      @JsonKey(name: 'product')
          required final String productId,
      @JsonKey(name: 'product\$_identifier')
          required final String productName,
      @JsonKey(name: 'uOM')
          required final String uomName,
      @JsonKey(name: 'uOM\$_identifier')
          required final String storageBinName,
      @JsonKey(name: 'movementQuantity')
          required final double movementQty}) = _$_ShipmentLineDto;
  const _ShipmentLineDto._() : super._();

  factory _ShipmentLineDto.fromJson(Map<String, dynamic> json) =
      _$_ShipmentLineDto.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'product')
  String get productId;
  @override
  @JsonKey(name: 'product\$_identifier')
  String get productName;
  @override
  @JsonKey(name: 'uOM')
  String get uomName;
  @override
  @JsonKey(name: 'uOM\$_identifier')
  String get storageBinName;
  @override
  @JsonKey(name: 'movementQuantity')
  double get movementQty;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentLineDtoCopyWith<_$_ShipmentLineDto> get copyWith =>
      throw _privateConstructorUsedError;
}

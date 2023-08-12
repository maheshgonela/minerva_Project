// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_form_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShipmentFormLine {
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get uomId => throw _privateConstructorUsedError;
  double get movementQty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentFormLineCopyWith<ShipmentFormLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentFormLineCopyWith<$Res> {
  factory $ShipmentFormLineCopyWith(
          ShipmentFormLine value, $Res Function(ShipmentFormLine) then) =
      _$ShipmentFormLineCopyWithImpl<$Res, ShipmentFormLine>;
  @useResult
  $Res call(
      {String productId, String productName, String uomId, double movementQty});
}

/// @nodoc
class _$ShipmentFormLineCopyWithImpl<$Res, $Val extends ShipmentFormLine>
    implements $ShipmentFormLineCopyWith<$Res> {
  _$ShipmentFormLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? uomId = null,
    Object? movementQty = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      uomId: null == uomId
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as String,
      movementQty: null == movementQty
          ? _value.movementQty
          : movementQty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipmentFormLineCopyWith<$Res>
    implements $ShipmentFormLineCopyWith<$Res> {
  factory _$$_ShipmentFormLineCopyWith(
          _$_ShipmentFormLine value, $Res Function(_$_ShipmentFormLine) then) =
      __$$_ShipmentFormLineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId, String productName, String uomId, double movementQty});
}

/// @nodoc
class __$$_ShipmentFormLineCopyWithImpl<$Res>
    extends _$ShipmentFormLineCopyWithImpl<$Res, _$_ShipmentFormLine>
    implements _$$_ShipmentFormLineCopyWith<$Res> {
  __$$_ShipmentFormLineCopyWithImpl(
      _$_ShipmentFormLine _value, $Res Function(_$_ShipmentFormLine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? uomId = null,
    Object? movementQty = null,
  }) {
    return _then(_$_ShipmentFormLine(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      uomId: null == uomId
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as String,
      movementQty: null == movementQty
          ? _value.movementQty
          : movementQty // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ShipmentFormLine implements _ShipmentFormLine {
  const _$_ShipmentFormLine(
      {required this.productId,
      required this.productName,
      required this.uomId,
      required this.movementQty});

  @override
  final String productId;
  @override
  final String productName;
  @override
  final String uomId;
  @override
  final double movementQty;

  @override
  String toString() {
    return 'ShipmentFormLine(productId: $productId, productName: $productName, uomId: $uomId, movementQty: $movementQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipmentFormLine &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.uomId, uomId) || other.uomId == uomId) &&
            (identical(other.movementQty, movementQty) ||
                other.movementQty == movementQty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, productName, uomId, movementQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipmentFormLineCopyWith<_$_ShipmentFormLine> get copyWith =>
      __$$_ShipmentFormLineCopyWithImpl<_$_ShipmentFormLine>(this, _$identity);
}

abstract class _ShipmentFormLine implements ShipmentFormLine {
  const factory _ShipmentFormLine(
      {required final String productId,
      required final String productName,
      required final String uomId,
      required final double movementQty}) = _$_ShipmentFormLine;

  @override
  String get productId;
  @override
  String get productName;
  @override
  String get uomId;
  @override
  double get movementQty;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentFormLineCopyWith<_$_ShipmentFormLine> get copyWith =>
      throw _privateConstructorUsedError;
}

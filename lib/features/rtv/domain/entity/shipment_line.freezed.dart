// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShipmentLine {
  String get id => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get uomName => throw _privateConstructorUsedError;
  String get storageBinName => throw _privateConstructorUsedError;
  double get movementQty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentLineCopyWith<ShipmentLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentLineCopyWith<$Res> {
  factory $ShipmentLineCopyWith(
          ShipmentLine value, $Res Function(ShipmentLine) then) =
      _$ShipmentLineCopyWithImpl<$Res, ShipmentLine>;
  @useResult
  $Res call(
      {String id,
      String productId,
      String productName,
      String uomName,
      String storageBinName,
      double movementQty});
}

/// @nodoc
class _$ShipmentLineCopyWithImpl<$Res, $Val extends ShipmentLine>
    implements $ShipmentLineCopyWith<$Res> {
  _$ShipmentLineCopyWithImpl(this._value, this._then);

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
abstract class _$$ShipmentLineImplCopyWith<$Res>
    implements $ShipmentLineCopyWith<$Res> {
  factory _$$ShipmentLineImplCopyWith(
          _$ShipmentLineImpl value, $Res Function(_$ShipmentLineImpl) then) =
      __$$ShipmentLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String productId,
      String productName,
      String uomName,
      String storageBinName,
      double movementQty});
}

/// @nodoc
class __$$ShipmentLineImplCopyWithImpl<$Res>
    extends _$ShipmentLineCopyWithImpl<$Res, _$ShipmentLineImpl>
    implements _$$ShipmentLineImplCopyWith<$Res> {
  __$$ShipmentLineImplCopyWithImpl(
      _$ShipmentLineImpl _value, $Res Function(_$ShipmentLineImpl) _then)
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
    return _then(_$ShipmentLineImpl(
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

class _$ShipmentLineImpl implements _ShipmentLine {
  const _$ShipmentLineImpl(
      {required this.id,
      required this.productId,
      required this.productName,
      required this.uomName,
      required this.storageBinName,
      required this.movementQty});

  @override
  final String id;
  @override
  final String productId;
  @override
  final String productName;
  @override
  final String uomName;
  @override
  final String storageBinName;
  @override
  final double movementQty;

  @override
  String toString() {
    return 'ShipmentLine(id: $id, productId: $productId, productName: $productName, uomName: $uomName, storageBinName: $storageBinName, movementQty: $movementQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentLineImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, productId, productName,
      uomName, storageBinName, movementQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentLineImplCopyWith<_$ShipmentLineImpl> get copyWith =>
      __$$ShipmentLineImplCopyWithImpl<_$ShipmentLineImpl>(this, _$identity);
}

abstract class _ShipmentLine implements ShipmentLine {
  const factory _ShipmentLine(
      {required final String id,
      required final String productId,
      required final String productName,
      required final String uomName,
      required final String storageBinName,
      required final double movementQty}) = _$ShipmentLineImpl;

  @override
  String get id;
  @override
  String get productId;
  @override
  String get productName;
  @override
  String get uomName;
  @override
  String get storageBinName;
  @override
  double get movementQty;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentLineImplCopyWith<_$ShipmentLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

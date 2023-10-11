// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShipmentUiModel {
  List<DispatchedProductUiModel> get products =>
      throw _privateConstructorUsedError;
  String get shipmentId => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  String get driver => throw _privateConstructorUsedError;
  String get vehicleNumber => throw _privateConstructorUsedError;
  String get creationDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentUiModelCopyWith<ShipmentUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentUiModelCopyWith<$Res> {
  factory $ShipmentUiModelCopyWith(
          ShipmentUiModel value, $Res Function(ShipmentUiModel) then) =
      _$ShipmentUiModelCopyWithImpl<$Res, ShipmentUiModel>;
  @useResult
  $Res call(
      {List<DispatchedProductUiModel> products,
      String shipmentId,
      String sender,
      String driver,
      String vehicleNumber,
      String creationDate});
}

/// @nodoc
class _$ShipmentUiModelCopyWithImpl<$Res, $Val extends ShipmentUiModel>
    implements $ShipmentUiModelCopyWith<$Res> {
  _$ShipmentUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? shipmentId = null,
    Object? sender = null,
    Object? driver = null,
    Object? vehicleNumber = null,
    Object? creationDate = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<DispatchedProductUiModel>,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentUiModelImplCopyWith<$Res>
    implements $ShipmentUiModelCopyWith<$Res> {
  factory _$$ShipmentUiModelImplCopyWith(_$ShipmentUiModelImpl value,
          $Res Function(_$ShipmentUiModelImpl) then) =
      __$$ShipmentUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DispatchedProductUiModel> products,
      String shipmentId,
      String sender,
      String driver,
      String vehicleNumber,
      String creationDate});
}

/// @nodoc
class __$$ShipmentUiModelImplCopyWithImpl<$Res>
    extends _$ShipmentUiModelCopyWithImpl<$Res, _$ShipmentUiModelImpl>
    implements _$$ShipmentUiModelImplCopyWith<$Res> {
  __$$ShipmentUiModelImplCopyWithImpl(
      _$ShipmentUiModelImpl _value, $Res Function(_$ShipmentUiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? shipmentId = null,
    Object? sender = null,
    Object? driver = null,
    Object? vehicleNumber = null,
    Object? creationDate = null,
  }) {
    return _then(_$ShipmentUiModelImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<DispatchedProductUiModel>,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShipmentUiModelImpl implements _ShipmentUiModel {
  const _$ShipmentUiModelImpl(
      {required final List<DispatchedProductUiModel> products,
      required this.shipmentId,
      required this.sender,
      required this.driver,
      required this.vehicleNumber,
      required this.creationDate})
      : _products = products;

  final List<DispatchedProductUiModel> _products;
  @override
  List<DispatchedProductUiModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String shipmentId;
  @override
  final String sender;
  @override
  final String driver;
  @override
  final String vehicleNumber;
  @override
  final String creationDate;

  @override
  String toString() {
    return 'ShipmentUiModel(products: $products, shipmentId: $shipmentId, sender: $sender, driver: $driver, vehicleNumber: $vehicleNumber, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentUiModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      shipmentId,
      sender,
      driver,
      vehicleNumber,
      creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentUiModelImplCopyWith<_$ShipmentUiModelImpl> get copyWith =>
      __$$ShipmentUiModelImplCopyWithImpl<_$ShipmentUiModelImpl>(
          this, _$identity);
}

abstract class _ShipmentUiModel implements ShipmentUiModel {
  const factory _ShipmentUiModel(
      {required final List<DispatchedProductUiModel> products,
      required final String shipmentId,
      required final String sender,
      required final String driver,
      required final String vehicleNumber,
      required final String creationDate}) = _$ShipmentUiModelImpl;

  @override
  List<DispatchedProductUiModel> get products;
  @override
  String get shipmentId;
  @override
  String get sender;
  @override
  String get driver;
  @override
  String get vehicleNumber;
  @override
  String get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentUiModelImplCopyWith<_$ShipmentUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

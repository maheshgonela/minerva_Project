// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_dispatch_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopDispatchProducts {
  List<DispatchOrderedProduct> get pending =>
      throw _privateConstructorUsedError;
  List<ShipmentUiModel> get shipped => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopDispatchProductsCopyWith<ShopDispatchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDispatchProductsCopyWith<$Res> {
  factory $ShopDispatchProductsCopyWith(ShopDispatchProducts value,
          $Res Function(ShopDispatchProducts) then) =
      _$ShopDispatchProductsCopyWithImpl<$Res, ShopDispatchProducts>;
  @useResult
  $Res call(
      {List<DispatchOrderedProduct> pending, List<ShipmentUiModel> shipped});
}

/// @nodoc
class _$ShopDispatchProductsCopyWithImpl<$Res,
        $Val extends ShopDispatchProducts>
    implements $ShopDispatchProductsCopyWith<$Res> {
  _$ShopDispatchProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pending = null,
    Object? shipped = null,
  }) {
    return _then(_value.copyWith(
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as List<DispatchOrderedProduct>,
      shipped: null == shipped
          ? _value.shipped
          : shipped // ignore: cast_nullable_to_non_nullable
              as List<ShipmentUiModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopDispatchProductsCopyWith<$Res>
    implements $ShopDispatchProductsCopyWith<$Res> {
  factory _$$_ShopDispatchProductsCopyWith(_$_ShopDispatchProducts value,
          $Res Function(_$_ShopDispatchProducts) then) =
      __$$_ShopDispatchProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DispatchOrderedProduct> pending, List<ShipmentUiModel> shipped});
}

/// @nodoc
class __$$_ShopDispatchProductsCopyWithImpl<$Res>
    extends _$ShopDispatchProductsCopyWithImpl<$Res, _$_ShopDispatchProducts>
    implements _$$_ShopDispatchProductsCopyWith<$Res> {
  __$$_ShopDispatchProductsCopyWithImpl(_$_ShopDispatchProducts _value,
      $Res Function(_$_ShopDispatchProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pending = null,
    Object? shipped = null,
  }) {
    return _then(_$_ShopDispatchProducts(
      pending: null == pending
          ? _value._pending
          : pending // ignore: cast_nullable_to_non_nullable
              as List<DispatchOrderedProduct>,
      shipped: null == shipped
          ? _value._shipped
          : shipped // ignore: cast_nullable_to_non_nullable
              as List<ShipmentUiModel>,
    ));
  }
}

/// @nodoc

class _$_ShopDispatchProducts implements _ShopDispatchProducts {
  const _$_ShopDispatchProducts(
      {required final List<DispatchOrderedProduct> pending,
      required final List<ShipmentUiModel> shipped})
      : _pending = pending,
        _shipped = shipped;

  final List<DispatchOrderedProduct> _pending;
  @override
  List<DispatchOrderedProduct> get pending {
    if (_pending is EqualUnmodifiableListView) return _pending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pending);
  }

  final List<ShipmentUiModel> _shipped;
  @override
  List<ShipmentUiModel> get shipped {
    if (_shipped is EqualUnmodifiableListView) return _shipped;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipped);
  }

  @override
  String toString() {
    return 'ShopDispatchProducts(pending: $pending, shipped: $shipped)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopDispatchProducts &&
            const DeepCollectionEquality().equals(other._pending, _pending) &&
            const DeepCollectionEquality().equals(other._shipped, _shipped));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pending),
      const DeepCollectionEquality().hash(_shipped));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopDispatchProductsCopyWith<_$_ShopDispatchProducts> get copyWith =>
      __$$_ShopDispatchProductsCopyWithImpl<_$_ShopDispatchProducts>(
          this, _$identity);
}

abstract class _ShopDispatchProducts implements ShopDispatchProducts {
  const factory _ShopDispatchProducts(
      {required final List<DispatchOrderedProduct> pending,
      required final List<ShipmentUiModel> shipped}) = _$_ShopDispatchProducts;

  @override
  List<DispatchOrderedProduct> get pending;
  @override
  List<ShipmentUiModel> get shipped;
  @override
  @JsonKey(ignore: true)
  _$$_ShopDispatchProductsCopyWith<_$_ShopDispatchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

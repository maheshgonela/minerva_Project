// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispatch_info_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DispatchInfoWrapper {
  SalesOrder get order => throw _privateConstructorUsedError;
  Shop get shop => throw _privateConstructorUsedError;
  List<DispatchItemUiModel> get dispatchItems =>
      throw _privateConstructorUsedError;
  List<DispatchOrderedProduct> get allProducts =>
      throw _privateConstructorUsedError;
  double get totalQty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DispatchInfoWrapperCopyWith<DispatchInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispatchInfoWrapperCopyWith<$Res> {
  factory $DispatchInfoWrapperCopyWith(
          DispatchInfoWrapper value, $Res Function(DispatchInfoWrapper) then) =
      _$DispatchInfoWrapperCopyWithImpl<$Res, DispatchInfoWrapper>;
  @useResult
  $Res call(
      {SalesOrder order,
      Shop shop,
      List<DispatchItemUiModel> dispatchItems,
      List<DispatchOrderedProduct> allProducts,
      double totalQty});

  $SalesOrderCopyWith<$Res> get order;
  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class _$DispatchInfoWrapperCopyWithImpl<$Res, $Val extends DispatchInfoWrapper>
    implements $DispatchInfoWrapperCopyWith<$Res> {
  _$DispatchInfoWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? shop = null,
    Object? dispatchItems = null,
    Object? allProducts = null,
    Object? totalQty = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SalesOrder,
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      dispatchItems: null == dispatchItems
          ? _value.dispatchItems
          : dispatchItems // ignore: cast_nullable_to_non_nullable
              as List<DispatchItemUiModel>,
      allProducts: null == allProducts
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as List<DispatchOrderedProduct>,
      totalQty: null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesOrderCopyWith<$Res> get order {
    return $SalesOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopCopyWith<$Res> get shop {
    return $ShopCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DispatchInfoWrapperCopyWith<$Res>
    implements $DispatchInfoWrapperCopyWith<$Res> {
  factory _$$_DispatchInfoWrapperCopyWith(_$_DispatchInfoWrapper value,
          $Res Function(_$_DispatchInfoWrapper) then) =
      __$$_DispatchInfoWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SalesOrder order,
      Shop shop,
      List<DispatchItemUiModel> dispatchItems,
      List<DispatchOrderedProduct> allProducts,
      double totalQty});

  @override
  $SalesOrderCopyWith<$Res> get order;
  @override
  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$$_DispatchInfoWrapperCopyWithImpl<$Res>
    extends _$DispatchInfoWrapperCopyWithImpl<$Res, _$_DispatchInfoWrapper>
    implements _$$_DispatchInfoWrapperCopyWith<$Res> {
  __$$_DispatchInfoWrapperCopyWithImpl(_$_DispatchInfoWrapper _value,
      $Res Function(_$_DispatchInfoWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? shop = null,
    Object? dispatchItems = null,
    Object? allProducts = null,
    Object? totalQty = null,
  }) {
    return _then(_$_DispatchInfoWrapper(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SalesOrder,
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      dispatchItems: null == dispatchItems
          ? _value._dispatchItems
          : dispatchItems // ignore: cast_nullable_to_non_nullable
              as List<DispatchItemUiModel>,
      allProducts: null == allProducts
          ? _value._allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as List<DispatchOrderedProduct>,
      totalQty: null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_DispatchInfoWrapper implements _DispatchInfoWrapper {
  const _$_DispatchInfoWrapper(
      {required this.order,
      required this.shop,
      required final List<DispatchItemUiModel> dispatchItems,
      required final List<DispatchOrderedProduct> allProducts,
      required this.totalQty})
      : _dispatchItems = dispatchItems,
        _allProducts = allProducts;

  @override
  final SalesOrder order;
  @override
  final Shop shop;
  final List<DispatchItemUiModel> _dispatchItems;
  @override
  List<DispatchItemUiModel> get dispatchItems {
    if (_dispatchItems is EqualUnmodifiableListView) return _dispatchItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dispatchItems);
  }

  final List<DispatchOrderedProduct> _allProducts;
  @override
  List<DispatchOrderedProduct> get allProducts {
    if (_allProducts is EqualUnmodifiableListView) return _allProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProducts);
  }

  @override
  final double totalQty;

  @override
  String toString() {
    return 'DispatchInfoWrapper(order: $order, shop: $shop, dispatchItems: $dispatchItems, allProducts: $allProducts, totalQty: $totalQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DispatchInfoWrapper &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            const DeepCollectionEquality()
                .equals(other._dispatchItems, _dispatchItems) &&
            const DeepCollectionEquality()
                .equals(other._allProducts, _allProducts) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      order,
      shop,
      const DeepCollectionEquality().hash(_dispatchItems),
      const DeepCollectionEquality().hash(_allProducts),
      totalQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DispatchInfoWrapperCopyWith<_$_DispatchInfoWrapper> get copyWith =>
      __$$_DispatchInfoWrapperCopyWithImpl<_$_DispatchInfoWrapper>(
          this, _$identity);
}

abstract class _DispatchInfoWrapper implements DispatchInfoWrapper {
  const factory _DispatchInfoWrapper(
      {required final SalesOrder order,
      required final Shop shop,
      required final List<DispatchItemUiModel> dispatchItems,
      required final List<DispatchOrderedProduct> allProducts,
      required final double totalQty}) = _$_DispatchInfoWrapper;

  @override
  SalesOrder get order;
  @override
  Shop get shop;
  @override
  List<DispatchItemUiModel> get dispatchItems;
  @override
  List<DispatchOrderedProduct> get allProducts;
  @override
  double get totalQty;
  @override
  @JsonKey(ignore: true)
  _$$_DispatchInfoWrapperCopyWith<_$_DispatchInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

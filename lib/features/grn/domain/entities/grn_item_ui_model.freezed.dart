// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grn_item_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GrnItemUiModel {
  OrderedProduct get product => throw _privateConstructorUsedError;
  bool get isReceivedFull => throw _privateConstructorUsedError;
  bool get isReceivedPartial => throw _privateConstructorUsedError;
  double get receivedQty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GrnItemUiModelCopyWith<GrnItemUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrnItemUiModelCopyWith<$Res> {
  factory $GrnItemUiModelCopyWith(
          GrnItemUiModel value, $Res Function(GrnItemUiModel) then) =
      _$GrnItemUiModelCopyWithImpl<$Res, GrnItemUiModel>;
  @useResult
  $Res call(
      {OrderedProduct product,
      bool isReceivedFull,
      bool isReceivedPartial,
      double receivedQty});

  $OrderedProductCopyWith<$Res> get product;
}

/// @nodoc
class _$GrnItemUiModelCopyWithImpl<$Res, $Val extends GrnItemUiModel>
    implements $GrnItemUiModelCopyWith<$Res> {
  _$GrnItemUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isReceivedFull = null,
    Object? isReceivedPartial = null,
    Object? receivedQty = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as OrderedProduct,
      isReceivedFull: null == isReceivedFull
          ? _value.isReceivedFull
          : isReceivedFull // ignore: cast_nullable_to_non_nullable
              as bool,
      isReceivedPartial: null == isReceivedPartial
          ? _value.isReceivedPartial
          : isReceivedPartial // ignore: cast_nullable_to_non_nullable
              as bool,
      receivedQty: null == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderedProductCopyWith<$Res> get product {
    return $OrderedProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GrnItemUiModelCopyWith<$Res>
    implements $GrnItemUiModelCopyWith<$Res> {
  factory _$$_GrnItemUiModelCopyWith(
          _$_GrnItemUiModel value, $Res Function(_$_GrnItemUiModel) then) =
      __$$_GrnItemUiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrderedProduct product,
      bool isReceivedFull,
      bool isReceivedPartial,
      double receivedQty});

  @override
  $OrderedProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_GrnItemUiModelCopyWithImpl<$Res>
    extends _$GrnItemUiModelCopyWithImpl<$Res, _$_GrnItemUiModel>
    implements _$$_GrnItemUiModelCopyWith<$Res> {
  __$$_GrnItemUiModelCopyWithImpl(
      _$_GrnItemUiModel _value, $Res Function(_$_GrnItemUiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isReceivedFull = null,
    Object? isReceivedPartial = null,
    Object? receivedQty = null,
  }) {
    return _then(_$_GrnItemUiModel(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as OrderedProduct,
      isReceivedFull: null == isReceivedFull
          ? _value.isReceivedFull
          : isReceivedFull // ignore: cast_nullable_to_non_nullable
              as bool,
      isReceivedPartial: null == isReceivedPartial
          ? _value.isReceivedPartial
          : isReceivedPartial // ignore: cast_nullable_to_non_nullable
              as bool,
      receivedQty: null == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_GrnItemUiModel implements _GrnItemUiModel {
  const _$_GrnItemUiModel(
      {required this.product,
      required this.isReceivedFull,
      required this.isReceivedPartial,
      required this.receivedQty});

  @override
  final OrderedProduct product;
  @override
  final bool isReceivedFull;
  @override
  final bool isReceivedPartial;
  @override
  final double receivedQty;

  @override
  String toString() {
    return 'GrnItemUiModel(product: $product, isReceivedFull: $isReceivedFull, isReceivedPartial: $isReceivedPartial, receivedQty: $receivedQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrnItemUiModel &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isReceivedFull, isReceivedFull) ||
                other.isReceivedFull == isReceivedFull) &&
            (identical(other.isReceivedPartial, isReceivedPartial) ||
                other.isReceivedPartial == isReceivedPartial) &&
            (identical(other.receivedQty, receivedQty) ||
                other.receivedQty == receivedQty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, product, isReceivedFull, isReceivedPartial, receivedQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrnItemUiModelCopyWith<_$_GrnItemUiModel> get copyWith =>
      __$$_GrnItemUiModelCopyWithImpl<_$_GrnItemUiModel>(this, _$identity);
}

abstract class _GrnItemUiModel implements GrnItemUiModel {
  const factory _GrnItemUiModel(
      {required final OrderedProduct product,
      required final bool isReceivedFull,
      required final bool isReceivedPartial,
      required final double receivedQty}) = _$_GrnItemUiModel;

  @override
  OrderedProduct get product;
  @override
  bool get isReceivedFull;
  @override
  bool get isReceivedPartial;
  @override
  double get receivedQty;
  @override
  @JsonKey(ignore: true)
  _$$_GrnItemUiModelCopyWith<_$_GrnItemUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

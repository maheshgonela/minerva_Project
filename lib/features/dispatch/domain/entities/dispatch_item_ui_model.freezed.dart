// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispatch_item_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DispatchItemUiModel {
  DispatchOrderedProduct get product => throw _privateConstructorUsedError;
  bool get isReceivedFull => throw _privateConstructorUsedError;
  bool get isReceivedPartial => throw _privateConstructorUsedError;
  double get dispatchedQty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DispatchItemUiModelCopyWith<DispatchItemUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispatchItemUiModelCopyWith<$Res> {
  factory $DispatchItemUiModelCopyWith(
          DispatchItemUiModel value, $Res Function(DispatchItemUiModel) then) =
      _$DispatchItemUiModelCopyWithImpl<$Res, DispatchItemUiModel>;
  @useResult
  $Res call(
      {DispatchOrderedProduct product,
      bool isReceivedFull,
      bool isReceivedPartial,
      double dispatchedQty});

  $DispatchOrderedProductCopyWith<$Res> get product;
}

/// @nodoc
class _$DispatchItemUiModelCopyWithImpl<$Res, $Val extends DispatchItemUiModel>
    implements $DispatchItemUiModelCopyWith<$Res> {
  _$DispatchItemUiModelCopyWithImpl(this._value, this._then);

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
    Object? dispatchedQty = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as DispatchOrderedProduct,
      isReceivedFull: null == isReceivedFull
          ? _value.isReceivedFull
          : isReceivedFull // ignore: cast_nullable_to_non_nullable
              as bool,
      isReceivedPartial: null == isReceivedPartial
          ? _value.isReceivedPartial
          : isReceivedPartial // ignore: cast_nullable_to_non_nullable
              as bool,
      dispatchedQty: null == dispatchedQty
          ? _value.dispatchedQty
          : dispatchedQty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DispatchOrderedProductCopyWith<$Res> get product {
    return $DispatchOrderedProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DispatchItemUiModelImplCopyWith<$Res>
    implements $DispatchItemUiModelCopyWith<$Res> {
  factory _$$DispatchItemUiModelImplCopyWith(_$DispatchItemUiModelImpl value,
          $Res Function(_$DispatchItemUiModelImpl) then) =
      __$$DispatchItemUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DispatchOrderedProduct product,
      bool isReceivedFull,
      bool isReceivedPartial,
      double dispatchedQty});

  @override
  $DispatchOrderedProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$DispatchItemUiModelImplCopyWithImpl<$Res>
    extends _$DispatchItemUiModelCopyWithImpl<$Res, _$DispatchItemUiModelImpl>
    implements _$$DispatchItemUiModelImplCopyWith<$Res> {
  __$$DispatchItemUiModelImplCopyWithImpl(_$DispatchItemUiModelImpl _value,
      $Res Function(_$DispatchItemUiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isReceivedFull = null,
    Object? isReceivedPartial = null,
    Object? dispatchedQty = null,
  }) {
    return _then(_$DispatchItemUiModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as DispatchOrderedProduct,
      isReceivedFull: null == isReceivedFull
          ? _value.isReceivedFull
          : isReceivedFull // ignore: cast_nullable_to_non_nullable
              as bool,
      isReceivedPartial: null == isReceivedPartial
          ? _value.isReceivedPartial
          : isReceivedPartial // ignore: cast_nullable_to_non_nullable
              as bool,
      dispatchedQty: null == dispatchedQty
          ? _value.dispatchedQty
          : dispatchedQty // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DispatchItemUiModelImpl implements _DispatchItemUiModel {
  const _$DispatchItemUiModelImpl(
      {required this.product,
      required this.isReceivedFull,
      required this.isReceivedPartial,
      required this.dispatchedQty});

  @override
  final DispatchOrderedProduct product;
  @override
  final bool isReceivedFull;
  @override
  final bool isReceivedPartial;
  @override
  final double dispatchedQty;

  @override
  String toString() {
    return 'DispatchItemUiModel(product: $product, isReceivedFull: $isReceivedFull, isReceivedPartial: $isReceivedPartial, dispatchedQty: $dispatchedQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DispatchItemUiModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isReceivedFull, isReceivedFull) ||
                other.isReceivedFull == isReceivedFull) &&
            (identical(other.isReceivedPartial, isReceivedPartial) ||
                other.isReceivedPartial == isReceivedPartial) &&
            (identical(other.dispatchedQty, dispatchedQty) ||
                other.dispatchedQty == dispatchedQty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, product, isReceivedFull, isReceivedPartial, dispatchedQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DispatchItemUiModelImplCopyWith<_$DispatchItemUiModelImpl> get copyWith =>
      __$$DispatchItemUiModelImplCopyWithImpl<_$DispatchItemUiModelImpl>(
          this, _$identity);
}

abstract class _DispatchItemUiModel implements DispatchItemUiModel {
  const factory _DispatchItemUiModel(
      {required final DispatchOrderedProduct product,
      required final bool isReceivedFull,
      required final bool isReceivedPartial,
      required final double dispatchedQty}) = _$DispatchItemUiModelImpl;

  @override
  DispatchOrderedProduct get product;
  @override
  bool get isReceivedFull;
  @override
  bool get isReceivedPartial;
  @override
  double get dispatchedQty;
  @override
  @JsonKey(ignore: true)
  _$$DispatchItemUiModelImplCopyWith<_$DispatchItemUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

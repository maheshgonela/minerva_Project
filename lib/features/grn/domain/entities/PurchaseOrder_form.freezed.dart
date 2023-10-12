// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PurchaseOrder_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PurchaseOrderForm {
  String get businessPartnerId => throw _privateConstructorUsedError;
  List<FormLine> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchaseOrderFormCopyWith<PurchaseOrderForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderFormCopyWith<$Res> {
  factory $PurchaseOrderFormCopyWith(
          PurchaseOrderForm value, $Res Function(PurchaseOrderForm) then) =
      _$PurchaseOrderFormCopyWithImpl<$Res, PurchaseOrderForm>;
  @useResult
  $Res call({String businessPartnerId, List<FormLine> products});
}

/// @nodoc
class _$PurchaseOrderFormCopyWithImpl<$Res, $Val extends PurchaseOrderForm>
    implements $PurchaseOrderFormCopyWith<$Res> {
  _$PurchaseOrderFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessPartnerId = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      businessPartnerId: null == businessPartnerId
          ? _value.businessPartnerId
          : businessPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<FormLine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseOrderFormImplCopyWith<$Res>
    implements $PurchaseOrderFormCopyWith<$Res> {
  factory _$$PurchaseOrderFormImplCopyWith(_$PurchaseOrderFormImpl value,
          $Res Function(_$PurchaseOrderFormImpl) then) =
      __$$PurchaseOrderFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String businessPartnerId, List<FormLine> products});
}

/// @nodoc
class __$$PurchaseOrderFormImplCopyWithImpl<$Res>
    extends _$PurchaseOrderFormCopyWithImpl<$Res, _$PurchaseOrderFormImpl>
    implements _$$PurchaseOrderFormImplCopyWith<$Res> {
  __$$PurchaseOrderFormImplCopyWithImpl(_$PurchaseOrderFormImpl _value,
      $Res Function(_$PurchaseOrderFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessPartnerId = null,
    Object? products = null,
  }) {
    return _then(_$PurchaseOrderFormImpl(
      businessPartnerId: null == businessPartnerId
          ? _value.businessPartnerId
          : businessPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<FormLine>,
    ));
  }
}

/// @nodoc

class _$PurchaseOrderFormImpl implements _PurchaseOrderForm {
  const _$PurchaseOrderFormImpl(
      {required this.businessPartnerId, required final List<FormLine> products})
      : _products = products;

  @override
  final String businessPartnerId;
  final List<FormLine> _products;
  @override
  List<FormLine> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'PurchaseOrderForm(businessPartnerId: $businessPartnerId, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrderFormImpl &&
            (identical(other.businessPartnerId, businessPartnerId) ||
                other.businessPartnerId == businessPartnerId) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, businessPartnerId,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrderFormImplCopyWith<_$PurchaseOrderFormImpl> get copyWith =>
      __$$PurchaseOrderFormImplCopyWithImpl<_$PurchaseOrderFormImpl>(
          this, _$identity);
}

abstract class _PurchaseOrderForm implements PurchaseOrderForm {
  const factory _PurchaseOrderForm(
      {required final String businessPartnerId,
      required final List<FormLine> products}) = _$PurchaseOrderFormImpl;

  @override
  String get businessPartnerId;
  @override
  List<FormLine> get products;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseOrderFormImplCopyWith<_$PurchaseOrderFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

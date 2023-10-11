// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShipmentForm {
  String get businessPartnerId => throw _privateConstructorUsedError;
  List<FormLine> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentFormCopyWith<ShipmentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentFormCopyWith<$Res> {
  factory $ShipmentFormCopyWith(
          ShipmentForm value, $Res Function(ShipmentForm) then) =
      _$ShipmentFormCopyWithImpl<$Res, ShipmentForm>;
  @useResult
  $Res call({String businessPartnerId, List<FormLine> products});
}

/// @nodoc
class _$ShipmentFormCopyWithImpl<$Res, $Val extends ShipmentForm>
    implements $ShipmentFormCopyWith<$Res> {
  _$ShipmentFormCopyWithImpl(this._value, this._then);

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
abstract class _$$ShipmentFormImplCopyWith<$Res>
    implements $ShipmentFormCopyWith<$Res> {
  factory _$$ShipmentFormImplCopyWith(
          _$ShipmentFormImpl value, $Res Function(_$ShipmentFormImpl) then) =
      __$$ShipmentFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String businessPartnerId, List<FormLine> products});
}

/// @nodoc
class __$$ShipmentFormImplCopyWithImpl<$Res>
    extends _$ShipmentFormCopyWithImpl<$Res, _$ShipmentFormImpl>
    implements _$$ShipmentFormImplCopyWith<$Res> {
  __$$ShipmentFormImplCopyWithImpl(
      _$ShipmentFormImpl _value, $Res Function(_$ShipmentFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessPartnerId = null,
    Object? products = null,
  }) {
    return _then(_$ShipmentFormImpl(
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

class _$ShipmentFormImpl implements _ShipmentForm {
  const _$ShipmentFormImpl(
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
    return 'ShipmentForm(businessPartnerId: $businessPartnerId, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentFormImpl &&
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
  _$$ShipmentFormImplCopyWith<_$ShipmentFormImpl> get copyWith =>
      __$$ShipmentFormImplCopyWithImpl<_$ShipmentFormImpl>(this, _$identity);
}

abstract class _ShipmentForm implements ShipmentForm {
  const factory _ShipmentForm(
      {required final String businessPartnerId,
      required final List<FormLine> products}) = _$ShipmentFormImpl;

  @override
  String get businessPartnerId;
  @override
  List<FormLine> get products;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentFormImplCopyWith<_$ShipmentFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

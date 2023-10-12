// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uomId => throw _privateConstructorUsedError;
  String get uomName => throw _privateConstructorUsedError;
  String get productCategoryId => throw _privateConstructorUsedError;
  String get productCategoryName => throw _privateConstructorUsedError;
  String get uPCEAN => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String name,
      String uomId,
      String uomName,
      String productCategoryId,
      String productCategoryName,
      String uPCEAN});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uomId = null,
    Object? uomName = null,
    Object? productCategoryId = null,
    Object? productCategoryName = null,
    Object? uPCEAN = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uomId: null == uomId
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as String,
      uomName: null == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryId: null == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryName: null == productCategoryName
          ? _value.productCategoryName
          : productCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      uPCEAN: null == uPCEAN
          ? _value.uPCEAN
          : uPCEAN // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String uomId,
      String uomName,
      String productCategoryId,
      String productCategoryName,
      String uPCEAN});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uomId = null,
    Object? uomName = null,
    Object? productCategoryId = null,
    Object? productCategoryName = null,
    Object? uPCEAN = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uomId: null == uomId
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as String,
      uomName: null == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryId: null == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryName: null == productCategoryName
          ? _value.productCategoryName
          : productCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      uPCEAN: null == uPCEAN
          ? _value.uPCEAN
          : uPCEAN // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.uomId,
      required this.uomName,
      required this.productCategoryId,
      required this.productCategoryName,
      required this.uPCEAN});

  @override
  final String id;
  @override
  final String name;
  @override
  final String uomId;
  @override
  final String uomName;
  @override
  final String productCategoryId;
  @override
  final String productCategoryName;
  @override
  final String uPCEAN;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, uomId: $uomId, uomName: $uomName, productCategoryId: $productCategoryId, productCategoryName: $productCategoryName, uPCEAN: $uPCEAN)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uomId, uomId) || other.uomId == uomId) &&
            (identical(other.uomName, uomName) || other.uomName == uomName) &&
            (identical(other.productCategoryId, productCategoryId) ||
                other.productCategoryId == productCategoryId) &&
            (identical(other.productCategoryName, productCategoryName) ||
                other.productCategoryName == productCategoryName) &&
            (identical(other.uPCEAN, uPCEAN) || other.uPCEAN == uPCEAN));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, uomId, uomName,
      productCategoryId, productCategoryName, uPCEAN);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String name,
      required final String uomId,
      required final String uomName,
      required final String productCategoryId,
      required final String productCategoryName,
      required final String uPCEAN}) = _$ProductImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get uomId;
  @override
  String get uomName;
  @override
  String get productCategoryId;
  @override
  String get productCategoryName;
  @override
  String get uPCEAN;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
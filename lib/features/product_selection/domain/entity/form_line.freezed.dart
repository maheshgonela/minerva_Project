// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormLine {
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get uomId => throw _privateConstructorUsedError;
  String get uomName => throw _privateConstructorUsedError;
  double get movementQty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormLineCopyWith<FormLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormLineCopyWith<$Res> {
  factory $FormLineCopyWith(FormLine value, $Res Function(FormLine) then) =
      _$FormLineCopyWithImpl<$Res, FormLine>;
  @useResult
  $Res call(
      {String productId,
      String productName,
      String uomId,
      String uomName,
      double movementQty});
}

/// @nodoc
class _$FormLineCopyWithImpl<$Res, $Val extends FormLine>
    implements $FormLineCopyWith<$Res> {
  _$FormLineCopyWithImpl(this._value, this._then);

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
    Object? uomName = null,
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
      uomName: null == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String,
      movementQty: null == movementQty
          ? _value.movementQty
          : movementQty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormLineImplCopyWith<$Res>
    implements $FormLineCopyWith<$Res> {
  factory _$$FormLineImplCopyWith(
          _$FormLineImpl value, $Res Function(_$FormLineImpl) then) =
      __$$FormLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String productName,
      String uomId,
      String uomName,
      double movementQty});
}

/// @nodoc
class __$$FormLineImplCopyWithImpl<$Res>
    extends _$FormLineCopyWithImpl<$Res, _$FormLineImpl>
    implements _$$FormLineImplCopyWith<$Res> {
  __$$FormLineImplCopyWithImpl(
      _$FormLineImpl _value, $Res Function(_$FormLineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? uomId = null,
    Object? uomName = null,
    Object? movementQty = null,
  }) {
    return _then(_$FormLineImpl(
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
      uomName: null == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String,
      movementQty: null == movementQty
          ? _value.movementQty
          : movementQty // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FormLineImpl implements _FormLine {
  const _$FormLineImpl(
      {required this.productId,
      required this.productName,
      required this.uomId,
      required this.uomName,
      required this.movementQty});

  @override
  final String productId;
  @override
  final String productName;
  @override
  final String uomId;
  @override
  final String uomName;
  @override
  final double movementQty;

  @override
  String toString() {
    return 'FormLine(productId: $productId, productName: $productName, uomId: $uomId, uomName: $uomName, movementQty: $movementQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormLineImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.uomId, uomId) || other.uomId == uomId) &&
            (identical(other.uomName, uomName) || other.uomName == uomName) &&
            (identical(other.movementQty, movementQty) ||
                other.movementQty == movementQty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, productId, productName, uomId, uomName, movementQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormLineImplCopyWith<_$FormLineImpl> get copyWith =>
      __$$FormLineImplCopyWithImpl<_$FormLineImpl>(this, _$identity);
}

abstract class _FormLine implements FormLine {
  const factory _FormLine(
      {required final String productId,
      required final String productName,
      required final String uomId,
      required final String uomName,
      required final double movementQty}) = _$FormLineImpl;

  @override
  String get productId;
  @override
  String get productName;
  @override
  String get uomId;
  @override
  String get uomName;
  @override
  double get movementQty;
  @override
  @JsonKey(ignore: true)
  _$$FormLineImplCopyWith<_$FormLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

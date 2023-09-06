// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ordered_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderedProductDto _$OrderedProductDtoFromJson(Map<String, dynamic> json) {
  return _OrderedProductDto.fromJson(json);
}

/// @nodoc
mixin _$OrderedProductDto {
  String get id => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  String get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get productCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'productcat')
  String get productCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'subcategory')
  String get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'uom')
  String get uOM => throw _privateConstructorUsedError;
  @JsonKey(name: 'uom_name', defaultValue: '')
  String get uOMName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ordered_qty')
  String get orderedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'pending_qty')
  String get pendingQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'dispatch_qty')
  String get selectedReceivedQty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderedProductDtoCopyWith<OrderedProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderedProductDtoCopyWith<$Res> {
  factory $OrderedProductDtoCopyWith(
          OrderedProductDto value, $Res Function(OrderedProductDto) then) =
      _$OrderedProductDtoCopyWithImpl<$Res, OrderedProductDto>;
  @useResult
  $Res call(
      {String id,
      String organization,
      String product,
      @JsonKey(name: 'code') String productCode,
      @JsonKey(name: 'productcat') String productCategory,
      @JsonKey(name: 'subcategory') String subCategory,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'uom') String uOM,
      @JsonKey(name: 'uom_name', defaultValue: '') String uOMName,
      @JsonKey(name: 'ordered_qty') String orderedQuantity,
      @JsonKey(name: 'pending_qty') String pendingQty,
      @JsonKey(name: 'dispatch_qty') String selectedReceivedQty});
}

/// @nodoc
class _$OrderedProductDtoCopyWithImpl<$Res, $Val extends OrderedProductDto>
    implements $OrderedProductDtoCopyWith<$Res> {
  _$OrderedProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = null,
    Object? product = null,
    Object? productCode = null,
    Object? productCategory = null,
    Object? subCategory = null,
    Object? productName = null,
    Object? uOM = null,
    Object? uOMName = null,
    Object? orderedQuantity = null,
    Object? pendingQty = null,
    Object? selectedReceivedQty = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      uOM: null == uOM
          ? _value.uOM
          : uOM // ignore: cast_nullable_to_non_nullable
              as String,
      uOMName: null == uOMName
          ? _value.uOMName
          : uOMName // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as String,
      pendingQty: null == pendingQty
          ? _value.pendingQty
          : pendingQty // ignore: cast_nullable_to_non_nullable
              as String,
      selectedReceivedQty: null == selectedReceivedQty
          ? _value.selectedReceivedQty
          : selectedReceivedQty // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderedProductDtoCopyWith<$Res>
    implements $OrderedProductDtoCopyWith<$Res> {
  factory _$$_OrderedProductDtoCopyWith(_$_OrderedProductDto value,
          $Res Function(_$_OrderedProductDto) then) =
      __$$_OrderedProductDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String organization,
      String product,
      @JsonKey(name: 'code') String productCode,
      @JsonKey(name: 'productcat') String productCategory,
      @JsonKey(name: 'subcategory') String subCategory,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'uom') String uOM,
      @JsonKey(name: 'uom_name', defaultValue: '') String uOMName,
      @JsonKey(name: 'ordered_qty') String orderedQuantity,
      @JsonKey(name: 'pending_qty') String pendingQty,
      @JsonKey(name: 'dispatch_qty') String selectedReceivedQty});
}

/// @nodoc
class __$$_OrderedProductDtoCopyWithImpl<$Res>
    extends _$OrderedProductDtoCopyWithImpl<$Res, _$_OrderedProductDto>
    implements _$$_OrderedProductDtoCopyWith<$Res> {
  __$$_OrderedProductDtoCopyWithImpl(
      _$_OrderedProductDto _value, $Res Function(_$_OrderedProductDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = null,
    Object? product = null,
    Object? productCode = null,
    Object? productCategory = null,
    Object? subCategory = null,
    Object? productName = null,
    Object? uOM = null,
    Object? uOMName = null,
    Object? orderedQuantity = null,
    Object? pendingQty = null,
    Object? selectedReceivedQty = null,
  }) {
    return _then(_$_OrderedProductDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      uOM: null == uOM
          ? _value.uOM
          : uOM // ignore: cast_nullable_to_non_nullable
              as String,
      uOMName: null == uOMName
          ? _value.uOMName
          : uOMName // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as String,
      pendingQty: null == pendingQty
          ? _value.pendingQty
          : pendingQty // ignore: cast_nullable_to_non_nullable
              as String,
      selectedReceivedQty: null == selectedReceivedQty
          ? _value.selectedReceivedQty
          : selectedReceivedQty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderedProductDto extends _OrderedProductDto {
  const _$_OrderedProductDto(
      {required this.id,
      required this.organization,
      required this.product,
      @JsonKey(name: 'code') required this.productCode,
      @JsonKey(name: 'productcat') required this.productCategory,
      @JsonKey(name: 'subcategory') required this.subCategory,
      @JsonKey(name: 'product_name') required this.productName,
      @JsonKey(name: 'uom') required this.uOM,
      @JsonKey(name: 'uom_name', defaultValue: '') required this.uOMName,
      @JsonKey(name: 'ordered_qty') required this.orderedQuantity,
      @JsonKey(name: 'pending_qty') required this.pendingQty,
      @JsonKey(name: 'dispatch_qty') required this.selectedReceivedQty})
      : super._();

  factory _$_OrderedProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderedProductDtoFromJson(json);

  @override
  final String id;
  @override
  final String organization;
  @override
  final String product;
  @override
  @JsonKey(name: 'code')
  final String productCode;
  @override
  @JsonKey(name: 'productcat')
  final String productCategory;
  @override
  @JsonKey(name: 'subcategory')
  final String subCategory;
  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  @JsonKey(name: 'uom')
  final String uOM;
  @override
  @JsonKey(name: 'uom_name', defaultValue: '')
  final String uOMName;
  @override
  @JsonKey(name: 'ordered_qty')
  final String orderedQuantity;
  @override
  @JsonKey(name: 'pending_qty')
  final String pendingQty;
  @override
  @JsonKey(name: 'dispatch_qty')
  final String selectedReceivedQty;

  @override
  String toString() {
    return 'OrderedProductDto(id: $id, organization: $organization, product: $product, productCode: $productCode, productCategory: $productCategory, subCategory: $subCategory, productName: $productName, uOM: $uOM, uOMName: $uOMName, orderedQuantity: $orderedQuantity, pendingQty: $pendingQty, selectedReceivedQty: $selectedReceivedQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderedProductDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.uOM, uOM) || other.uOM == uOM) &&
            (identical(other.uOMName, uOMName) || other.uOMName == uOMName) &&
            (identical(other.orderedQuantity, orderedQuantity) ||
                other.orderedQuantity == orderedQuantity) &&
            (identical(other.pendingQty, pendingQty) ||
                other.pendingQty == pendingQty) &&
            (identical(other.selectedReceivedQty, selectedReceivedQty) ||
                other.selectedReceivedQty == selectedReceivedQty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organization,
      product,
      productCode,
      productCategory,
      subCategory,
      productName,
      uOM,
      uOMName,
      orderedQuantity,
      pendingQty,
      selectedReceivedQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderedProductDtoCopyWith<_$_OrderedProductDto> get copyWith =>
      __$$_OrderedProductDtoCopyWithImpl<_$_OrderedProductDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderedProductDtoToJson(
      this,
    );
  }
}

abstract class _OrderedProductDto extends OrderedProductDto {
  const factory _OrderedProductDto(
      {required final String id,
      required final String organization,
      required final String product,
      @JsonKey(name: 'code') required final String productCode,
      @JsonKey(name: 'productcat') required final String productCategory,
      @JsonKey(name: 'subcategory') required final String subCategory,
      @JsonKey(name: 'product_name') required final String productName,
      @JsonKey(name: 'uom') required final String uOM,
      @JsonKey(name: 'uom_name', defaultValue: '')
      required final String uOMName,
      @JsonKey(name: 'ordered_qty') required final String orderedQuantity,
      @JsonKey(name: 'pending_qty') required final String pendingQty,
      @JsonKey(name: 'dispatch_qty')
      required final String selectedReceivedQty}) = _$_OrderedProductDto;
  const _OrderedProductDto._() : super._();

  factory _OrderedProductDto.fromJson(Map<String, dynamic> json) =
      _$_OrderedProductDto.fromJson;

  @override
  String get id;
  @override
  String get organization;
  @override
  String get product;
  @override
  @JsonKey(name: 'code')
  String get productCode;
  @override
  @JsonKey(name: 'productcat')
  String get productCategory;
  @override
  @JsonKey(name: 'subcategory')
  String get subCategory;
  @override
  @JsonKey(name: 'product_name')
  String get productName;
  @override
  @JsonKey(name: 'uom')
  String get uOM;
  @override
  @JsonKey(name: 'uom_name', defaultValue: '')
  String get uOMName;
  @override
  @JsonKey(name: 'ordered_qty')
  String get orderedQuantity;
  @override
  @JsonKey(name: 'pending_qty')
  String get pendingQty;
  @override
  @JsonKey(name: 'dispatch_qty')
  String get selectedReceivedQty;
  @override
  @JsonKey(ignore: true)
  _$$_OrderedProductDtoCopyWith<_$_OrderedProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

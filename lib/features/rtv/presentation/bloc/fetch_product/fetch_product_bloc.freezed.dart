// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchProductEvent {
  String get bpId => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bpId, String? query) fetchInitialProduct,
    required TResult Function(String bpId, String? query) fetchMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bpId, String? query)? fetchInitialProduct,
    TResult? Function(String bpId, String? query)? fetchMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bpId, String? query)? fetchInitialProduct,
    TResult Function(String bpId, String? query)? fetchMoreProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProduct value) fetchInitialProduct,
    required TResult Function(_FetchMoreProduct value) fetchMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult? Function(_FetchMoreProduct value)? fetchMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult Function(_FetchMoreProduct value)? fetchMoreProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchProductEventCopyWith<FetchProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchProductEventCopyWith<$Res> {
  factory $FetchProductEventCopyWith(
          FetchProductEvent value, $Res Function(FetchProductEvent) then) =
      _$FetchProductEventCopyWithImpl<$Res, FetchProductEvent>;
  @useResult
  $Res call({String bpId, String? query});
}

/// @nodoc
class _$FetchProductEventCopyWithImpl<$Res, $Val extends FetchProductEvent>
    implements $FetchProductEventCopyWith<$Res> {
  _$FetchProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bpId = null,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      bpId: null == bpId
          ? _value.bpId
          : bpId // ignore: cast_nullable_to_non_nullable
              as String,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchInitialProductCopyWith<$Res>
    implements $FetchProductEventCopyWith<$Res> {
  factory _$$_FetchInitialProductCopyWith(_$_FetchInitialProduct value,
          $Res Function(_$_FetchInitialProduct) then) =
      __$$_FetchInitialProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bpId, String? query});
}

/// @nodoc
class __$$_FetchInitialProductCopyWithImpl<$Res>
    extends _$FetchProductEventCopyWithImpl<$Res, _$_FetchInitialProduct>
    implements _$$_FetchInitialProductCopyWith<$Res> {
  __$$_FetchInitialProductCopyWithImpl(_$_FetchInitialProduct _value,
      $Res Function(_$_FetchInitialProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bpId = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchInitialProduct(
      null == bpId
          ? _value.bpId
          : bpId // ignore: cast_nullable_to_non_nullable
              as String,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchInitialProduct implements _FetchInitialProduct {
  const _$_FetchInitialProduct(this.bpId, {this.query});

  @override
  final String bpId;
  @override
  final String? query;

  @override
  String toString() {
    return 'FetchProductEvent.fetchInitialProduct(bpId: $bpId, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchInitialProduct &&
            (identical(other.bpId, bpId) || other.bpId == bpId) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bpId, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchInitialProductCopyWith<_$_FetchInitialProduct> get copyWith =>
      __$$_FetchInitialProductCopyWithImpl<_$_FetchInitialProduct>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bpId, String? query) fetchInitialProduct,
    required TResult Function(String bpId, String? query) fetchMoreProduct,
  }) {
    return fetchInitialProduct(bpId, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bpId, String? query)? fetchInitialProduct,
    TResult? Function(String bpId, String? query)? fetchMoreProduct,
  }) {
    return fetchInitialProduct?.call(bpId, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bpId, String? query)? fetchInitialProduct,
    TResult Function(String bpId, String? query)? fetchMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchInitialProduct != null) {
      return fetchInitialProduct(bpId, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProduct value) fetchInitialProduct,
    required TResult Function(_FetchMoreProduct value) fetchMoreProduct,
  }) {
    return fetchInitialProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult? Function(_FetchMoreProduct value)? fetchMoreProduct,
  }) {
    return fetchInitialProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult Function(_FetchMoreProduct value)? fetchMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchInitialProduct != null) {
      return fetchInitialProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialProduct implements FetchProductEvent {
  const factory _FetchInitialProduct(final String bpId, {final String? query}) =
      _$_FetchInitialProduct;

  @override
  String get bpId;
  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchInitialProductCopyWith<_$_FetchInitialProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchMoreProductCopyWith<$Res>
    implements $FetchProductEventCopyWith<$Res> {
  factory _$$_FetchMoreProductCopyWith(
          _$_FetchMoreProduct value, $Res Function(_$_FetchMoreProduct) then) =
      __$$_FetchMoreProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bpId, String? query});
}

/// @nodoc
class __$$_FetchMoreProductCopyWithImpl<$Res>
    extends _$FetchProductEventCopyWithImpl<$Res, _$_FetchMoreProduct>
    implements _$$_FetchMoreProductCopyWith<$Res> {
  __$$_FetchMoreProductCopyWithImpl(
      _$_FetchMoreProduct _value, $Res Function(_$_FetchMoreProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bpId = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchMoreProduct(
      null == bpId
          ? _value.bpId
          : bpId // ignore: cast_nullable_to_non_nullable
              as String,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchMoreProduct implements _FetchMoreProduct {
  const _$_FetchMoreProduct(this.bpId, {this.query});

  @override
  final String bpId;
  @override
  final String? query;

  @override
  String toString() {
    return 'FetchProductEvent.fetchMoreProduct(bpId: $bpId, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchMoreProduct &&
            (identical(other.bpId, bpId) || other.bpId == bpId) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bpId, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchMoreProductCopyWith<_$_FetchMoreProduct> get copyWith =>
      __$$_FetchMoreProductCopyWithImpl<_$_FetchMoreProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bpId, String? query) fetchInitialProduct,
    required TResult Function(String bpId, String? query) fetchMoreProduct,
  }) {
    return fetchMoreProduct(bpId, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bpId, String? query)? fetchInitialProduct,
    TResult? Function(String bpId, String? query)? fetchMoreProduct,
  }) {
    return fetchMoreProduct?.call(bpId, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bpId, String? query)? fetchInitialProduct,
    TResult Function(String bpId, String? query)? fetchMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchMoreProduct != null) {
      return fetchMoreProduct(bpId, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProduct value) fetchInitialProduct,
    required TResult Function(_FetchMoreProduct value) fetchMoreProduct,
  }) {
    return fetchMoreProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult? Function(_FetchMoreProduct value)? fetchMoreProduct,
  }) {
    return fetchMoreProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult Function(_FetchMoreProduct value)? fetchMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchMoreProduct != null) {
      return fetchMoreProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreProduct implements FetchProductEvent {
  const factory _FetchMoreProduct(final String bpId, {final String? query}) =
      _$_FetchMoreProduct;

  @override
  String get bpId;
  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchMoreProductCopyWith<_$_FetchMoreProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Product> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchProductStateCopyWith<$Res> {
  factory $FetchProductStateCopyWith(
          FetchProductState value, $Res Function(FetchProductState) then) =
      _$FetchProductStateCopyWithImpl<$Res, FetchProductState>;
}

/// @nodoc
class _$FetchProductStateCopyWithImpl<$Res, $Val extends FetchProductState>
    implements $FetchProductStateCopyWith<$Res> {
  _$FetchProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchProductInitialCopyWith<$Res> {
  factory _$$_FetchProductInitialCopyWith(_$_FetchProductInitial value,
          $Res Function(_$_FetchProductInitial) then) =
      __$$_FetchProductInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchProductInitialCopyWithImpl<$Res>
    extends _$FetchProductStateCopyWithImpl<$Res, _$_FetchProductInitial>
    implements _$$_FetchProductInitialCopyWith<$Res> {
  __$$_FetchProductInitialCopyWithImpl(_$_FetchProductInitial _value,
      $Res Function(_$_FetchProductInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchProductInitial implements _FetchProductInitial {
  const _$_FetchProductInitial();

  @override
  String toString() {
    return 'FetchProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchProductInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Product> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchProductInitial implements FetchProductState {
  const factory _FetchProductInitial() = _$_FetchProductInitial;
}

/// @nodoc
abstract class _$$_FetchProductLoadingCopyWith<$Res> {
  factory _$$_FetchProductLoadingCopyWith(_$_FetchProductLoading value,
          $Res Function(_$_FetchProductLoading) then) =
      __$$_FetchProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchProductLoadingCopyWithImpl<$Res>
    extends _$FetchProductStateCopyWithImpl<$Res, _$_FetchProductLoading>
    implements _$$_FetchProductLoadingCopyWith<$Res> {
  __$$_FetchProductLoadingCopyWithImpl(_$_FetchProductLoading _value,
      $Res Function(_$_FetchProductLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchProductLoading implements _FetchProductLoading {
  const _$_FetchProductLoading();

  @override
  String toString() {
    return 'FetchProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Product> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchProductLoading implements FetchProductState {
  const factory _FetchProductLoading() = _$_FetchProductLoading;
}

/// @nodoc
abstract class _$$_FetchProductSuccessCopyWith<$Res> {
  factory _$$_FetchProductSuccessCopyWith(_$_FetchProductSuccess value,
          $Res Function(_$_FetchProductSuccess) then) =
      __$$_FetchProductSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$_FetchProductSuccessCopyWithImpl<$Res>
    extends _$FetchProductStateCopyWithImpl<$Res, _$_FetchProductSuccess>
    implements _$$_FetchProductSuccessCopyWith<$Res> {
  __$$_FetchProductSuccessCopyWithImpl(_$_FetchProductSuccess _value,
      $Res Function(_$_FetchProductSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchProductSuccess(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchProductSuccess implements _FetchProductSuccess {
  const _$_FetchProductSuccess(
      {required final List<Product> records,
      required this.hasReachedMax,
      this.query})
      : _records = records;

  final List<Product> _records;
  @override
  List<Product> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final bool hasReachedMax;
  @override
  final String? query;

  @override
  String toString() {
    return 'FetchProductState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchProductSuccess &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_records), hasReachedMax, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchProductSuccessCopyWith<_$_FetchProductSuccess> get copyWith =>
      __$$_FetchProductSuccessCopyWithImpl<_$_FetchProductSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Product> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(records, hasReachedMax, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(records, hasReachedMax, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(records, hasReachedMax, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchProductSuccess implements FetchProductState {
  const factory _FetchProductSuccess(
      {required final List<Product> records,
      required final bool hasReachedMax,
      final String? query}) = _$_FetchProductSuccess;

  List<Product> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_FetchProductSuccessCopyWith<_$_FetchProductSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchProductFailureCopyWith<$Res> {
  factory _$$_FetchProductFailureCopyWith(_$_FetchProductFailure value,
          $Res Function(_$_FetchProductFailure) then) =
      __$$_FetchProductFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchProductFailureCopyWithImpl<$Res>
    extends _$FetchProductStateCopyWithImpl<$Res, _$_FetchProductFailure>
    implements _$$_FetchProductFailureCopyWith<$Res> {
  __$$_FetchProductFailureCopyWithImpl(_$_FetchProductFailure _value,
      $Res Function(_$_FetchProductFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchProductFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_FetchProductFailure implements _FetchProductFailure {
  const _$_FetchProductFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchProductState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchProductFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchProductFailureCopyWith<_$_FetchProductFailure> get copyWith =>
      __$$_FetchProductFailureCopyWithImpl<_$_FetchProductFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Product> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchProductFailure implements FetchProductState {
  const factory _FetchProductFailure(final Failure failure) =
      _$_FetchProductFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FetchProductFailureCopyWith<_$_FetchProductFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

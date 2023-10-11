// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_dispatch_orderedproduct_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchDispatchOrderedproductEvent {
  String get purchaseOrderId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId) fetchBakeryProducts,
    required TResult Function(String purchaseOrderId) fetchSweetsProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId)? fetchBakeryProducts,
    TResult? Function(String purchaseOrderId)? fetchSweetsProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId)? fetchBakeryProducts,
    TResult Function(String purchaseOrderId)? fetchSweetsProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialDispatchOrderedproduct value)
        fetchBakeryProducts,
    required TResult Function(_fetchMoreDispatchOrderedproduct value)
        fetchSweetsProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult? Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchDispatchOrderedproductEventCopyWith<FetchDispatchOrderedproductEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDispatchOrderedproductEventCopyWith<$Res> {
  factory $FetchDispatchOrderedproductEventCopyWith(
          FetchDispatchOrderedproductEvent value,
          $Res Function(FetchDispatchOrderedproductEvent) then) =
      _$FetchDispatchOrderedproductEventCopyWithImpl<$Res,
          FetchDispatchOrderedproductEvent>;
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class _$FetchDispatchOrderedproductEventCopyWithImpl<$Res,
        $Val extends FetchDispatchOrderedproductEvent>
    implements $FetchDispatchOrderedproductEventCopyWith<$Res> {
  _$FetchDispatchOrderedproductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_value.copyWith(
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$fetchInitialDispatchOrderedproductImplCopyWith<$Res>
    implements $FetchDispatchOrderedproductEventCopyWith<$Res> {
  factory _$$fetchInitialDispatchOrderedproductImplCopyWith(
          _$fetchInitialDispatchOrderedproductImpl value,
          $Res Function(_$fetchInitialDispatchOrderedproductImpl) then) =
      __$$fetchInitialDispatchOrderedproductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class __$$fetchInitialDispatchOrderedproductImplCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductEventCopyWithImpl<$Res,
        _$fetchInitialDispatchOrderedproductImpl>
    implements _$$fetchInitialDispatchOrderedproductImplCopyWith<$Res> {
  __$$fetchInitialDispatchOrderedproductImplCopyWithImpl(
      _$fetchInitialDispatchOrderedproductImpl _value,
      $Res Function(_$fetchInitialDispatchOrderedproductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_$fetchInitialDispatchOrderedproductImpl(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$fetchInitialDispatchOrderedproductImpl
    implements _fetchInitialDispatchOrderedproduct {
  const _$fetchInitialDispatchOrderedproductImpl(this.purchaseOrderId);

  @override
  final String purchaseOrderId;

  @override
  String toString() {
    return 'FetchDispatchOrderedproductEvent.fetchBakeryProducts(purchaseOrderId: $purchaseOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fetchInitialDispatchOrderedproductImpl &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchInitialDispatchOrderedproductImplCopyWith<
          _$fetchInitialDispatchOrderedproductImpl>
      get copyWith => __$$fetchInitialDispatchOrderedproductImplCopyWithImpl<
          _$fetchInitialDispatchOrderedproductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId) fetchBakeryProducts,
    required TResult Function(String purchaseOrderId) fetchSweetsProducts,
  }) {
    return fetchBakeryProducts(purchaseOrderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId)? fetchBakeryProducts,
    TResult? Function(String purchaseOrderId)? fetchSweetsProducts,
  }) {
    return fetchBakeryProducts?.call(purchaseOrderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId)? fetchBakeryProducts,
    TResult Function(String purchaseOrderId)? fetchSweetsProducts,
    required TResult orElse(),
  }) {
    if (fetchBakeryProducts != null) {
      return fetchBakeryProducts(purchaseOrderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialDispatchOrderedproduct value)
        fetchBakeryProducts,
    required TResult Function(_fetchMoreDispatchOrderedproduct value)
        fetchSweetsProducts,
  }) {
    return fetchBakeryProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult? Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
  }) {
    return fetchBakeryProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) {
    if (fetchBakeryProducts != null) {
      return fetchBakeryProducts(this);
    }
    return orElse();
  }
}

abstract class _fetchInitialDispatchOrderedproduct
    implements FetchDispatchOrderedproductEvent {
  const factory _fetchInitialDispatchOrderedproduct(
      final String purchaseOrderId) = _$fetchInitialDispatchOrderedproductImpl;

  @override
  String get purchaseOrderId;
  @override
  @JsonKey(ignore: true)
  _$$fetchInitialDispatchOrderedproductImplCopyWith<
          _$fetchInitialDispatchOrderedproductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$fetchMoreDispatchOrderedproductImplCopyWith<$Res>
    implements $FetchDispatchOrderedproductEventCopyWith<$Res> {
  factory _$$fetchMoreDispatchOrderedproductImplCopyWith(
          _$fetchMoreDispatchOrderedproductImpl value,
          $Res Function(_$fetchMoreDispatchOrderedproductImpl) then) =
      __$$fetchMoreDispatchOrderedproductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class __$$fetchMoreDispatchOrderedproductImplCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductEventCopyWithImpl<$Res,
        _$fetchMoreDispatchOrderedproductImpl>
    implements _$$fetchMoreDispatchOrderedproductImplCopyWith<$Res> {
  __$$fetchMoreDispatchOrderedproductImplCopyWithImpl(
      _$fetchMoreDispatchOrderedproductImpl _value,
      $Res Function(_$fetchMoreDispatchOrderedproductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_$fetchMoreDispatchOrderedproductImpl(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$fetchMoreDispatchOrderedproductImpl
    implements _fetchMoreDispatchOrderedproduct {
  const _$fetchMoreDispatchOrderedproductImpl(this.purchaseOrderId);

  @override
  final String purchaseOrderId;

  @override
  String toString() {
    return 'FetchDispatchOrderedproductEvent.fetchSweetsProducts(purchaseOrderId: $purchaseOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fetchMoreDispatchOrderedproductImpl &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchMoreDispatchOrderedproductImplCopyWith<
          _$fetchMoreDispatchOrderedproductImpl>
      get copyWith => __$$fetchMoreDispatchOrderedproductImplCopyWithImpl<
          _$fetchMoreDispatchOrderedproductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId) fetchBakeryProducts,
    required TResult Function(String purchaseOrderId) fetchSweetsProducts,
  }) {
    return fetchSweetsProducts(purchaseOrderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId)? fetchBakeryProducts,
    TResult? Function(String purchaseOrderId)? fetchSweetsProducts,
  }) {
    return fetchSweetsProducts?.call(purchaseOrderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId)? fetchBakeryProducts,
    TResult Function(String purchaseOrderId)? fetchSweetsProducts,
    required TResult orElse(),
  }) {
    if (fetchSweetsProducts != null) {
      return fetchSweetsProducts(purchaseOrderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialDispatchOrderedproduct value)
        fetchBakeryProducts,
    required TResult Function(_fetchMoreDispatchOrderedproduct value)
        fetchSweetsProducts,
  }) {
    return fetchSweetsProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult? Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
  }) {
    return fetchSweetsProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) {
    if (fetchSweetsProducts != null) {
      return fetchSweetsProducts(this);
    }
    return orElse();
  }
}

abstract class _fetchMoreDispatchOrderedproduct
    implements FetchDispatchOrderedproductEvent {
  const factory _fetchMoreDispatchOrderedproduct(final String purchaseOrderId) =
      _$fetchMoreDispatchOrderedproductImpl;

  @override
  String get purchaseOrderId;
  @override
  @JsonKey(ignore: true)
  _$$fetchMoreDispatchOrderedproductImplCopyWith<
          _$fetchMoreDispatchOrderedproductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchDispatchOrderedproductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DispatchOrderedProduct> records,
            bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDispatchOrderedproductInitial value)
        initial,
    required TResult Function(_FetchDispatchOrderedproductLoading value)
        loading,
    required TResult Function(_FetchDispatchOrderedproductSuccess value)
        success,
    required TResult Function(_FetchDispatchOrderedproductFailure value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult? Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult? Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult? Function(_FetchDispatchOrderedproductFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult Function(_FetchDispatchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDispatchOrderedproductStateCopyWith<$Res> {
  factory $FetchDispatchOrderedproductStateCopyWith(
          FetchDispatchOrderedproductState value,
          $Res Function(FetchDispatchOrderedproductState) then) =
      _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
          FetchDispatchOrderedproductState>;
}

/// @nodoc
class _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        $Val extends FetchDispatchOrderedproductState>
    implements $FetchDispatchOrderedproductStateCopyWith<$Res> {
  _$FetchDispatchOrderedproductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDispatchOrderedproductInitialImplCopyWith<$Res> {
  factory _$$FetchDispatchOrderedproductInitialImplCopyWith(
          _$FetchDispatchOrderedproductInitialImpl value,
          $Res Function(_$FetchDispatchOrderedproductInitialImpl) then) =
      __$$FetchDispatchOrderedproductInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDispatchOrderedproductInitialImplCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        _$FetchDispatchOrderedproductInitialImpl>
    implements _$$FetchDispatchOrderedproductInitialImplCopyWith<$Res> {
  __$$FetchDispatchOrderedproductInitialImplCopyWithImpl(
      _$FetchDispatchOrderedproductInitialImpl _value,
      $Res Function(_$FetchDispatchOrderedproductInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDispatchOrderedproductInitialImpl
    implements _FetchDispatchOrderedproductInitial {
  const _$FetchDispatchOrderedproductInitialImpl();

  @override
  String toString() {
    return 'FetchDispatchOrderedproductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDispatchOrderedproductInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DispatchOrderedProduct> records,
            bool hasReachedMax, String? query)
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
    TResult? Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
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
    TResult Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
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
    required TResult Function(_FetchDispatchOrderedproductInitial value)
        initial,
    required TResult Function(_FetchDispatchOrderedproductLoading value)
        loading,
    required TResult Function(_FetchDispatchOrderedproductSuccess value)
        success,
    required TResult Function(_FetchDispatchOrderedproductFailure value)
        failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult? Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult? Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult? Function(_FetchDispatchOrderedproductFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult Function(_FetchDispatchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchDispatchOrderedproductInitial
    implements FetchDispatchOrderedproductState {
  const factory _FetchDispatchOrderedproductInitial() =
      _$FetchDispatchOrderedproductInitialImpl;
}

/// @nodoc
abstract class _$$FetchDispatchOrderedproductLoadingImplCopyWith<$Res> {
  factory _$$FetchDispatchOrderedproductLoadingImplCopyWith(
          _$FetchDispatchOrderedproductLoadingImpl value,
          $Res Function(_$FetchDispatchOrderedproductLoadingImpl) then) =
      __$$FetchDispatchOrderedproductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDispatchOrderedproductLoadingImplCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        _$FetchDispatchOrderedproductLoadingImpl>
    implements _$$FetchDispatchOrderedproductLoadingImplCopyWith<$Res> {
  __$$FetchDispatchOrderedproductLoadingImplCopyWithImpl(
      _$FetchDispatchOrderedproductLoadingImpl _value,
      $Res Function(_$FetchDispatchOrderedproductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDispatchOrderedproductLoadingImpl
    implements _FetchDispatchOrderedproductLoading {
  const _$FetchDispatchOrderedproductLoadingImpl();

  @override
  String toString() {
    return 'FetchDispatchOrderedproductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDispatchOrderedproductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DispatchOrderedProduct> records,
            bool hasReachedMax, String? query)
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
    TResult? Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
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
    TResult Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
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
    required TResult Function(_FetchDispatchOrderedproductInitial value)
        initial,
    required TResult Function(_FetchDispatchOrderedproductLoading value)
        loading,
    required TResult Function(_FetchDispatchOrderedproductSuccess value)
        success,
    required TResult Function(_FetchDispatchOrderedproductFailure value)
        failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult? Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult? Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult? Function(_FetchDispatchOrderedproductFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult Function(_FetchDispatchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchDispatchOrderedproductLoading
    implements FetchDispatchOrderedproductState {
  const factory _FetchDispatchOrderedproductLoading() =
      _$FetchDispatchOrderedproductLoadingImpl;
}

/// @nodoc
abstract class _$$FetchDispatchOrderedproductSuccessImplCopyWith<$Res> {
  factory _$$FetchDispatchOrderedproductSuccessImplCopyWith(
          _$FetchDispatchOrderedproductSuccessImpl value,
          $Res Function(_$FetchDispatchOrderedproductSuccessImpl) then) =
      __$$FetchDispatchOrderedproductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DispatchOrderedProduct> records,
      bool hasReachedMax,
      String? query});
}

/// @nodoc
class __$$FetchDispatchOrderedproductSuccessImplCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        _$FetchDispatchOrderedproductSuccessImpl>
    implements _$$FetchDispatchOrderedproductSuccessImplCopyWith<$Res> {
  __$$FetchDispatchOrderedproductSuccessImplCopyWithImpl(
      _$FetchDispatchOrderedproductSuccessImpl _value,
      $Res Function(_$FetchDispatchOrderedproductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$FetchDispatchOrderedproductSuccessImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<DispatchOrderedProduct>,
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

class _$FetchDispatchOrderedproductSuccessImpl
    implements _FetchDispatchOrderedproductSuccess {
  const _$FetchDispatchOrderedproductSuccessImpl(
      {required final List<DispatchOrderedProduct> records,
      required this.hasReachedMax,
      this.query})
      : _records = records;

  final List<DispatchOrderedProduct> _records;
  @override
  List<DispatchOrderedProduct> get records {
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
    return 'FetchDispatchOrderedproductState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDispatchOrderedproductSuccessImpl &&
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
  _$$FetchDispatchOrderedproductSuccessImplCopyWith<
          _$FetchDispatchOrderedproductSuccessImpl>
      get copyWith => __$$FetchDispatchOrderedproductSuccessImplCopyWithImpl<
          _$FetchDispatchOrderedproductSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DispatchOrderedProduct> records,
            bool hasReachedMax, String? query)
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
    TResult? Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
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
    TResult Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
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
    required TResult Function(_FetchDispatchOrderedproductInitial value)
        initial,
    required TResult Function(_FetchDispatchOrderedproductLoading value)
        loading,
    required TResult Function(_FetchDispatchOrderedproductSuccess value)
        success,
    required TResult Function(_FetchDispatchOrderedproductFailure value)
        failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult? Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult? Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult? Function(_FetchDispatchOrderedproductFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult Function(_FetchDispatchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchDispatchOrderedproductSuccess
    implements FetchDispatchOrderedproductState {
  const factory _FetchDispatchOrderedproductSuccess(
      {required final List<DispatchOrderedProduct> records,
      required final bool hasReachedMax,
      final String? query}) = _$FetchDispatchOrderedproductSuccessImpl;

  List<DispatchOrderedProduct> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$FetchDispatchOrderedproductSuccessImplCopyWith<
          _$FetchDispatchOrderedproductSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchDispatchOrderedproductFailureImplCopyWith<$Res> {
  factory _$$FetchDispatchOrderedproductFailureImplCopyWith(
          _$FetchDispatchOrderedproductFailureImpl value,
          $Res Function(_$FetchDispatchOrderedproductFailureImpl) then) =
      __$$FetchDispatchOrderedproductFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FetchDispatchOrderedproductFailureImplCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        _$FetchDispatchOrderedproductFailureImpl>
    implements _$$FetchDispatchOrderedproductFailureImplCopyWith<$Res> {
  __$$FetchDispatchOrderedproductFailureImplCopyWithImpl(
      _$FetchDispatchOrderedproductFailureImpl _value,
      $Res Function(_$FetchDispatchOrderedproductFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FetchDispatchOrderedproductFailureImpl(
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

class _$FetchDispatchOrderedproductFailureImpl
    implements _FetchDispatchOrderedproductFailure {
  const _$FetchDispatchOrderedproductFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchDispatchOrderedproductState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDispatchOrderedproductFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDispatchOrderedproductFailureImplCopyWith<
          _$FetchDispatchOrderedproductFailureImpl>
      get copyWith => __$$FetchDispatchOrderedproductFailureImplCopyWithImpl<
          _$FetchDispatchOrderedproductFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DispatchOrderedProduct> records,
            bool hasReachedMax, String? query)
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
    TResult? Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
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
    TResult Function(List<DispatchOrderedProduct> records, bool hasReachedMax,
            String? query)?
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
    required TResult Function(_FetchDispatchOrderedproductInitial value)
        initial,
    required TResult Function(_FetchDispatchOrderedproductLoading value)
        loading,
    required TResult Function(_FetchDispatchOrderedproductSuccess value)
        success,
    required TResult Function(_FetchDispatchOrderedproductFailure value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult? Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult? Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult? Function(_FetchDispatchOrderedproductFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDispatchOrderedproductInitial value)? initial,
    TResult Function(_FetchDispatchOrderedproductLoading value)? loading,
    TResult Function(_FetchDispatchOrderedproductSuccess value)? success,
    TResult Function(_FetchDispatchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchDispatchOrderedproductFailure
    implements FetchDispatchOrderedproductState {
  const factory _FetchDispatchOrderedproductFailure(final Failure failure) =
      _$FetchDispatchOrderedproductFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FetchDispatchOrderedproductFailureImplCopyWith<
          _$FetchDispatchOrderedproductFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

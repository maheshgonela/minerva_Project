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
abstract class _$$_fetchInitialDispatchOrderedproductCopyWith<$Res>
    implements $FetchDispatchOrderedproductEventCopyWith<$Res> {
  factory _$$_fetchInitialDispatchOrderedproductCopyWith(
          _$_fetchInitialDispatchOrderedproduct value,
          $Res Function(_$_fetchInitialDispatchOrderedproduct) then) =
      __$$_fetchInitialDispatchOrderedproductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class __$$_fetchInitialDispatchOrderedproductCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductEventCopyWithImpl<$Res,
        _$_fetchInitialDispatchOrderedproduct>
    implements _$$_fetchInitialDispatchOrderedproductCopyWith<$Res> {
  __$$_fetchInitialDispatchOrderedproductCopyWithImpl(
      _$_fetchInitialDispatchOrderedproduct _value,
      $Res Function(_$_fetchInitialDispatchOrderedproduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_$_fetchInitialDispatchOrderedproduct(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_fetchInitialDispatchOrderedproduct
    implements _fetchInitialDispatchOrderedproduct {
  const _$_fetchInitialDispatchOrderedproduct(this.purchaseOrderId);

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
            other is _$_fetchInitialDispatchOrderedproduct &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_fetchInitialDispatchOrderedproductCopyWith<
          _$_fetchInitialDispatchOrderedproduct>
      get copyWith => __$$_fetchInitialDispatchOrderedproductCopyWithImpl<
          _$_fetchInitialDispatchOrderedproduct>(this, _$identity);

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
      final String purchaseOrderId) = _$_fetchInitialDispatchOrderedproduct;

  @override
  String get purchaseOrderId;
  @override
  @JsonKey(ignore: true)
  _$$_fetchInitialDispatchOrderedproductCopyWith<
          _$_fetchInitialDispatchOrderedproduct>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_fetchMoreDispatchOrderedproductCopyWith<$Res>
    implements $FetchDispatchOrderedproductEventCopyWith<$Res> {
  factory _$$_fetchMoreDispatchOrderedproductCopyWith(
          _$_fetchMoreDispatchOrderedproduct value,
          $Res Function(_$_fetchMoreDispatchOrderedproduct) then) =
      __$$_fetchMoreDispatchOrderedproductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class __$$_fetchMoreDispatchOrderedproductCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductEventCopyWithImpl<$Res,
        _$_fetchMoreDispatchOrderedproduct>
    implements _$$_fetchMoreDispatchOrderedproductCopyWith<$Res> {
  __$$_fetchMoreDispatchOrderedproductCopyWithImpl(
      _$_fetchMoreDispatchOrderedproduct _value,
      $Res Function(_$_fetchMoreDispatchOrderedproduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_$_fetchMoreDispatchOrderedproduct(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_fetchMoreDispatchOrderedproduct
    implements _fetchMoreDispatchOrderedproduct {
  const _$_fetchMoreDispatchOrderedproduct(this.purchaseOrderId);

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
            other is _$_fetchMoreDispatchOrderedproduct &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_fetchMoreDispatchOrderedproductCopyWith<
          _$_fetchMoreDispatchOrderedproduct>
      get copyWith => __$$_fetchMoreDispatchOrderedproductCopyWithImpl<
          _$_fetchMoreDispatchOrderedproduct>(this, _$identity);

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
      _$_fetchMoreDispatchOrderedproduct;

  @override
  String get purchaseOrderId;
  @override
  @JsonKey(ignore: true)
  _$$_fetchMoreDispatchOrderedproductCopyWith<
          _$_fetchMoreDispatchOrderedproduct>
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
abstract class _$$_FetchDispatchOrderedproductInitialCopyWith<$Res> {
  factory _$$_FetchDispatchOrderedproductInitialCopyWith(
          _$_FetchDispatchOrderedproductInitial value,
          $Res Function(_$_FetchDispatchOrderedproductInitial) then) =
      __$$_FetchDispatchOrderedproductInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchDispatchOrderedproductInitialCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        _$_FetchDispatchOrderedproductInitial>
    implements _$$_FetchDispatchOrderedproductInitialCopyWith<$Res> {
  __$$_FetchDispatchOrderedproductInitialCopyWithImpl(
      _$_FetchDispatchOrderedproductInitial _value,
      $Res Function(_$_FetchDispatchOrderedproductInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchDispatchOrderedproductInitial
    implements _FetchDispatchOrderedproductInitial {
  const _$_FetchDispatchOrderedproductInitial();

  @override
  String toString() {
    return 'FetchDispatchOrderedproductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchDispatchOrderedproductInitial);
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
      _$_FetchDispatchOrderedproductInitial;
}

/// @nodoc
abstract class _$$_FetchDispatchOrderedproductLoadingCopyWith<$Res> {
  factory _$$_FetchDispatchOrderedproductLoadingCopyWith(
          _$_FetchDispatchOrderedproductLoading value,
          $Res Function(_$_FetchDispatchOrderedproductLoading) then) =
      __$$_FetchDispatchOrderedproductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchDispatchOrderedproductLoadingCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        _$_FetchDispatchOrderedproductLoading>
    implements _$$_FetchDispatchOrderedproductLoadingCopyWith<$Res> {
  __$$_FetchDispatchOrderedproductLoadingCopyWithImpl(
      _$_FetchDispatchOrderedproductLoading _value,
      $Res Function(_$_FetchDispatchOrderedproductLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchDispatchOrderedproductLoading
    implements _FetchDispatchOrderedproductLoading {
  const _$_FetchDispatchOrderedproductLoading();

  @override
  String toString() {
    return 'FetchDispatchOrderedproductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchDispatchOrderedproductLoading);
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
      _$_FetchDispatchOrderedproductLoading;
}

/// @nodoc
abstract class _$$_FetchDispatchOrderedproductSuccessCopyWith<$Res> {
  factory _$$_FetchDispatchOrderedproductSuccessCopyWith(
          _$_FetchDispatchOrderedproductSuccess value,
          $Res Function(_$_FetchDispatchOrderedproductSuccess) then) =
      __$$_FetchDispatchOrderedproductSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DispatchOrderedProduct> records,
      bool hasReachedMax,
      String? query});
}

/// @nodoc
class __$$_FetchDispatchOrderedproductSuccessCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        _$_FetchDispatchOrderedproductSuccess>
    implements _$$_FetchDispatchOrderedproductSuccessCopyWith<$Res> {
  __$$_FetchDispatchOrderedproductSuccessCopyWithImpl(
      _$_FetchDispatchOrderedproductSuccess _value,
      $Res Function(_$_FetchDispatchOrderedproductSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchDispatchOrderedproductSuccess(
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

class _$_FetchDispatchOrderedproductSuccess
    implements _FetchDispatchOrderedproductSuccess {
  const _$_FetchDispatchOrderedproductSuccess(
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
            other is _$_FetchDispatchOrderedproductSuccess &&
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
  _$$_FetchDispatchOrderedproductSuccessCopyWith<
          _$_FetchDispatchOrderedproductSuccess>
      get copyWith => __$$_FetchDispatchOrderedproductSuccessCopyWithImpl<
          _$_FetchDispatchOrderedproductSuccess>(this, _$identity);

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
      final String? query}) = _$_FetchDispatchOrderedproductSuccess;

  List<DispatchOrderedProduct> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_FetchDispatchOrderedproductSuccessCopyWith<
          _$_FetchDispatchOrderedproductSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchDispatchOrderedproductFailureCopyWith<$Res> {
  factory _$$_FetchDispatchOrderedproductFailureCopyWith(
          _$_FetchDispatchOrderedproductFailure value,
          $Res Function(_$_FetchDispatchOrderedproductFailure) then) =
      __$$_FetchDispatchOrderedproductFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchDispatchOrderedproductFailureCopyWithImpl<$Res>
    extends _$FetchDispatchOrderedproductStateCopyWithImpl<$Res,
        _$_FetchDispatchOrderedproductFailure>
    implements _$$_FetchDispatchOrderedproductFailureCopyWith<$Res> {
  __$$_FetchDispatchOrderedproductFailureCopyWithImpl(
      _$_FetchDispatchOrderedproductFailure _value,
      $Res Function(_$_FetchDispatchOrderedproductFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchDispatchOrderedproductFailure(
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

class _$_FetchDispatchOrderedproductFailure
    implements _FetchDispatchOrderedproductFailure {
  const _$_FetchDispatchOrderedproductFailure(this.failure);

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
            other is _$_FetchDispatchOrderedproductFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchDispatchOrderedproductFailureCopyWith<
          _$_FetchDispatchOrderedproductFailure>
      get copyWith => __$$_FetchDispatchOrderedproductFailureCopyWithImpl<
          _$_FetchDispatchOrderedproductFailure>(this, _$identity);

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
      _$_FetchDispatchOrderedproductFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FetchDispatchOrderedproductFailureCopyWith<
          _$_FetchDispatchOrderedproductFailure>
      get copyWith => throw _privateConstructorUsedError;
}

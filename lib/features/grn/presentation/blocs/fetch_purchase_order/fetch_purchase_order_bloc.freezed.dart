// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_purchase_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchPurchaseOrderEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialPurchaseOrder,
    required TResult Function(String? query) fetchMorePurchaseOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialPurchaseOrder,
    TResult? Function(String? query)? fetchMorePurchaseOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialPurchaseOrder,
    TResult Function(String? query)? fetchMorePurchaseOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialPurchaseOrder value)
        fetchInitialPurchaseOrder,
    required TResult Function(_FetchMorePurchaseOrder value)
        fetchMorePurchaseOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialPurchaseOrder value)?
        fetchInitialPurchaseOrder,
    TResult? Function(_FetchMorePurchaseOrder value)? fetchMorePurchaseOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialPurchaseOrder value)?
        fetchInitialPurchaseOrder,
    TResult Function(_FetchMorePurchaseOrder value)? fetchMorePurchaseOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchPurchaseOrderEventCopyWith<FetchPurchaseOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPurchaseOrderEventCopyWith<$Res> {
  factory $FetchPurchaseOrderEventCopyWith(FetchPurchaseOrderEvent value,
          $Res Function(FetchPurchaseOrderEvent) then) =
      _$FetchPurchaseOrderEventCopyWithImpl<$Res, FetchPurchaseOrderEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$FetchPurchaseOrderEventCopyWithImpl<$Res,
        $Val extends FetchPurchaseOrderEvent>
    implements $FetchPurchaseOrderEventCopyWith<$Res> {
  _$FetchPurchaseOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchInitialPurchaseOrderImplCopyWith<$Res>
    implements $FetchPurchaseOrderEventCopyWith<$Res> {
  factory _$$FetchInitialPurchaseOrderImplCopyWith(
          _$FetchInitialPurchaseOrderImpl value,
          $Res Function(_$FetchInitialPurchaseOrderImpl) then) =
      __$$FetchInitialPurchaseOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchInitialPurchaseOrderImplCopyWithImpl<$Res>
    extends _$FetchPurchaseOrderEventCopyWithImpl<$Res,
        _$FetchInitialPurchaseOrderImpl>
    implements _$$FetchInitialPurchaseOrderImplCopyWith<$Res> {
  __$$FetchInitialPurchaseOrderImplCopyWithImpl(
      _$FetchInitialPurchaseOrderImpl _value,
      $Res Function(_$FetchInitialPurchaseOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchInitialPurchaseOrderImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchInitialPurchaseOrderImpl implements _FetchInitialPurchaseOrder {
  const _$FetchInitialPurchaseOrderImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchPurchaseOrderEvent.fetchInitialPurchaseOrder(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchInitialPurchaseOrderImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchInitialPurchaseOrderImplCopyWith<_$FetchInitialPurchaseOrderImpl>
      get copyWith => __$$FetchInitialPurchaseOrderImplCopyWithImpl<
          _$FetchInitialPurchaseOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialPurchaseOrder,
    required TResult Function(String? query) fetchMorePurchaseOrder,
  }) {
    return fetchInitialPurchaseOrder(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialPurchaseOrder,
    TResult? Function(String? query)? fetchMorePurchaseOrder,
  }) {
    return fetchInitialPurchaseOrder?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialPurchaseOrder,
    TResult Function(String? query)? fetchMorePurchaseOrder,
    required TResult orElse(),
  }) {
    if (fetchInitialPurchaseOrder != null) {
      return fetchInitialPurchaseOrder(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialPurchaseOrder value)
        fetchInitialPurchaseOrder,
    required TResult Function(_FetchMorePurchaseOrder value)
        fetchMorePurchaseOrder,
  }) {
    return fetchInitialPurchaseOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialPurchaseOrder value)?
        fetchInitialPurchaseOrder,
    TResult? Function(_FetchMorePurchaseOrder value)? fetchMorePurchaseOrder,
  }) {
    return fetchInitialPurchaseOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialPurchaseOrder value)?
        fetchInitialPurchaseOrder,
    TResult Function(_FetchMorePurchaseOrder value)? fetchMorePurchaseOrder,
    required TResult orElse(),
  }) {
    if (fetchInitialPurchaseOrder != null) {
      return fetchInitialPurchaseOrder(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialPurchaseOrder implements FetchPurchaseOrderEvent {
  const factory _FetchInitialPurchaseOrder({final String? query}) =
      _$FetchInitialPurchaseOrderImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchInitialPurchaseOrderImplCopyWith<_$FetchInitialPurchaseOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMorePurchaseOrderImplCopyWith<$Res>
    implements $FetchPurchaseOrderEventCopyWith<$Res> {
  factory _$$FetchMorePurchaseOrderImplCopyWith(
          _$FetchMorePurchaseOrderImpl value,
          $Res Function(_$FetchMorePurchaseOrderImpl) then) =
      __$$FetchMorePurchaseOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchMorePurchaseOrderImplCopyWithImpl<$Res>
    extends _$FetchPurchaseOrderEventCopyWithImpl<$Res,
        _$FetchMorePurchaseOrderImpl>
    implements _$$FetchMorePurchaseOrderImplCopyWith<$Res> {
  __$$FetchMorePurchaseOrderImplCopyWithImpl(
      _$FetchMorePurchaseOrderImpl _value,
      $Res Function(_$FetchMorePurchaseOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchMorePurchaseOrderImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchMorePurchaseOrderImpl implements _FetchMorePurchaseOrder {
  const _$FetchMorePurchaseOrderImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchPurchaseOrderEvent.fetchMorePurchaseOrder(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMorePurchaseOrderImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMorePurchaseOrderImplCopyWith<_$FetchMorePurchaseOrderImpl>
      get copyWith => __$$FetchMorePurchaseOrderImplCopyWithImpl<
          _$FetchMorePurchaseOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialPurchaseOrder,
    required TResult Function(String? query) fetchMorePurchaseOrder,
  }) {
    return fetchMorePurchaseOrder(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialPurchaseOrder,
    TResult? Function(String? query)? fetchMorePurchaseOrder,
  }) {
    return fetchMorePurchaseOrder?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialPurchaseOrder,
    TResult Function(String? query)? fetchMorePurchaseOrder,
    required TResult orElse(),
  }) {
    if (fetchMorePurchaseOrder != null) {
      return fetchMorePurchaseOrder(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialPurchaseOrder value)
        fetchInitialPurchaseOrder,
    required TResult Function(_FetchMorePurchaseOrder value)
        fetchMorePurchaseOrder,
  }) {
    return fetchMorePurchaseOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialPurchaseOrder value)?
        fetchInitialPurchaseOrder,
    TResult? Function(_FetchMorePurchaseOrder value)? fetchMorePurchaseOrder,
  }) {
    return fetchMorePurchaseOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialPurchaseOrder value)?
        fetchInitialPurchaseOrder,
    TResult Function(_FetchMorePurchaseOrder value)? fetchMorePurchaseOrder,
    required TResult orElse(),
  }) {
    if (fetchMorePurchaseOrder != null) {
      return fetchMorePurchaseOrder(this);
    }
    return orElse();
  }
}

abstract class _FetchMorePurchaseOrder implements FetchPurchaseOrderEvent {
  const factory _FetchMorePurchaseOrder({final String? query}) =
      _$FetchMorePurchaseOrderImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchMorePurchaseOrderImplCopyWith<_$FetchMorePurchaseOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchPurchaseOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPurchaseOrderInitial value) initial,
    required TResult Function(_FetchPurchaseOrderLoading value) loading,
    required TResult Function(_FetchPurchaseOrderSuccess value) success,
    required TResult Function(_FetchPurchaseOrderFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPurchaseOrderInitial value)? initial,
    TResult? Function(_FetchPurchaseOrderLoading value)? loading,
    TResult? Function(_FetchPurchaseOrderSuccess value)? success,
    TResult? Function(_FetchPurchaseOrderFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPurchaseOrderInitial value)? initial,
    TResult Function(_FetchPurchaseOrderLoading value)? loading,
    TResult Function(_FetchPurchaseOrderSuccess value)? success,
    TResult Function(_FetchPurchaseOrderFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPurchaseOrderStateCopyWith<$Res> {
  factory $FetchPurchaseOrderStateCopyWith(FetchPurchaseOrderState value,
          $Res Function(FetchPurchaseOrderState) then) =
      _$FetchPurchaseOrderStateCopyWithImpl<$Res, FetchPurchaseOrderState>;
}

/// @nodoc
class _$FetchPurchaseOrderStateCopyWithImpl<$Res,
        $Val extends FetchPurchaseOrderState>
    implements $FetchPurchaseOrderStateCopyWith<$Res> {
  _$FetchPurchaseOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchPurchaseOrderInitialImplCopyWith<$Res> {
  factory _$$FetchPurchaseOrderInitialImplCopyWith(
          _$FetchPurchaseOrderInitialImpl value,
          $Res Function(_$FetchPurchaseOrderInitialImpl) then) =
      __$$FetchPurchaseOrderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPurchaseOrderInitialImplCopyWithImpl<$Res>
    extends _$FetchPurchaseOrderStateCopyWithImpl<$Res,
        _$FetchPurchaseOrderInitialImpl>
    implements _$$FetchPurchaseOrderInitialImplCopyWith<$Res> {
  __$$FetchPurchaseOrderInitialImplCopyWithImpl(
      _$FetchPurchaseOrderInitialImpl _value,
      $Res Function(_$FetchPurchaseOrderInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPurchaseOrderInitialImpl implements _FetchPurchaseOrderInitial {
  const _$FetchPurchaseOrderInitialImpl();

  @override
  String toString() {
    return 'FetchPurchaseOrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPurchaseOrderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)
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
    TResult? Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
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
    TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchPurchaseOrderInitial value) initial,
    required TResult Function(_FetchPurchaseOrderLoading value) loading,
    required TResult Function(_FetchPurchaseOrderSuccess value) success,
    required TResult Function(_FetchPurchaseOrderFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPurchaseOrderInitial value)? initial,
    TResult? Function(_FetchPurchaseOrderLoading value)? loading,
    TResult? Function(_FetchPurchaseOrderSuccess value)? success,
    TResult? Function(_FetchPurchaseOrderFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPurchaseOrderInitial value)? initial,
    TResult Function(_FetchPurchaseOrderLoading value)? loading,
    TResult Function(_FetchPurchaseOrderSuccess value)? success,
    TResult Function(_FetchPurchaseOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchPurchaseOrderInitial implements FetchPurchaseOrderState {
  const factory _FetchPurchaseOrderInitial() = _$FetchPurchaseOrderInitialImpl;
}

/// @nodoc
abstract class _$$FetchPurchaseOrderLoadingImplCopyWith<$Res> {
  factory _$$FetchPurchaseOrderLoadingImplCopyWith(
          _$FetchPurchaseOrderLoadingImpl value,
          $Res Function(_$FetchPurchaseOrderLoadingImpl) then) =
      __$$FetchPurchaseOrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPurchaseOrderLoadingImplCopyWithImpl<$Res>
    extends _$FetchPurchaseOrderStateCopyWithImpl<$Res,
        _$FetchPurchaseOrderLoadingImpl>
    implements _$$FetchPurchaseOrderLoadingImplCopyWith<$Res> {
  __$$FetchPurchaseOrderLoadingImplCopyWithImpl(
      _$FetchPurchaseOrderLoadingImpl _value,
      $Res Function(_$FetchPurchaseOrderLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPurchaseOrderLoadingImpl implements _FetchPurchaseOrderLoading {
  const _$FetchPurchaseOrderLoadingImpl();

  @override
  String toString() {
    return 'FetchPurchaseOrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPurchaseOrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)
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
    TResult? Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
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
    TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchPurchaseOrderInitial value) initial,
    required TResult Function(_FetchPurchaseOrderLoading value) loading,
    required TResult Function(_FetchPurchaseOrderSuccess value) success,
    required TResult Function(_FetchPurchaseOrderFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPurchaseOrderInitial value)? initial,
    TResult? Function(_FetchPurchaseOrderLoading value)? loading,
    TResult? Function(_FetchPurchaseOrderSuccess value)? success,
    TResult? Function(_FetchPurchaseOrderFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPurchaseOrderInitial value)? initial,
    TResult Function(_FetchPurchaseOrderLoading value)? loading,
    TResult Function(_FetchPurchaseOrderSuccess value)? success,
    TResult Function(_FetchPurchaseOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchPurchaseOrderLoading implements FetchPurchaseOrderState {
  const factory _FetchPurchaseOrderLoading() = _$FetchPurchaseOrderLoadingImpl;
}

/// @nodoc
abstract class _$$FetchPurchaseOrderSuccessImplCopyWith<$Res> {
  factory _$$FetchPurchaseOrderSuccessImplCopyWith(
          _$FetchPurchaseOrderSuccessImpl value,
          $Res Function(_$FetchPurchaseOrderSuccessImpl) then) =
      __$$FetchPurchaseOrderSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PurchaseOrder> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$FetchPurchaseOrderSuccessImplCopyWithImpl<$Res>
    extends _$FetchPurchaseOrderStateCopyWithImpl<$Res,
        _$FetchPurchaseOrderSuccessImpl>
    implements _$$FetchPurchaseOrderSuccessImplCopyWith<$Res> {
  __$$FetchPurchaseOrderSuccessImplCopyWithImpl(
      _$FetchPurchaseOrderSuccessImpl _value,
      $Res Function(_$FetchPurchaseOrderSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$FetchPurchaseOrderSuccessImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<PurchaseOrder>,
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

class _$FetchPurchaseOrderSuccessImpl implements _FetchPurchaseOrderSuccess {
  const _$FetchPurchaseOrderSuccessImpl(
      {required final List<PurchaseOrder> records,
      required this.hasReachedMax,
      this.query})
      : _records = records;

  final List<PurchaseOrder> _records;
  @override
  List<PurchaseOrder> get records {
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
    return 'FetchPurchaseOrderState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPurchaseOrderSuccessImpl &&
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
  _$$FetchPurchaseOrderSuccessImplCopyWith<_$FetchPurchaseOrderSuccessImpl>
      get copyWith => __$$FetchPurchaseOrderSuccessImplCopyWithImpl<
          _$FetchPurchaseOrderSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)
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
    TResult? Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
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
    TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchPurchaseOrderInitial value) initial,
    required TResult Function(_FetchPurchaseOrderLoading value) loading,
    required TResult Function(_FetchPurchaseOrderSuccess value) success,
    required TResult Function(_FetchPurchaseOrderFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPurchaseOrderInitial value)? initial,
    TResult? Function(_FetchPurchaseOrderLoading value)? loading,
    TResult? Function(_FetchPurchaseOrderSuccess value)? success,
    TResult? Function(_FetchPurchaseOrderFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPurchaseOrderInitial value)? initial,
    TResult Function(_FetchPurchaseOrderLoading value)? loading,
    TResult Function(_FetchPurchaseOrderSuccess value)? success,
    TResult Function(_FetchPurchaseOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchPurchaseOrderSuccess implements FetchPurchaseOrderState {
  const factory _FetchPurchaseOrderSuccess(
      {required final List<PurchaseOrder> records,
      required final bool hasReachedMax,
      final String? query}) = _$FetchPurchaseOrderSuccessImpl;

  List<PurchaseOrder> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$FetchPurchaseOrderSuccessImplCopyWith<_$FetchPurchaseOrderSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPurchaseOrderFailureImplCopyWith<$Res> {
  factory _$$FetchPurchaseOrderFailureImplCopyWith(
          _$FetchPurchaseOrderFailureImpl value,
          $Res Function(_$FetchPurchaseOrderFailureImpl) then) =
      __$$FetchPurchaseOrderFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FetchPurchaseOrderFailureImplCopyWithImpl<$Res>
    extends _$FetchPurchaseOrderStateCopyWithImpl<$Res,
        _$FetchPurchaseOrderFailureImpl>
    implements _$$FetchPurchaseOrderFailureImplCopyWith<$Res> {
  __$$FetchPurchaseOrderFailureImplCopyWithImpl(
      _$FetchPurchaseOrderFailureImpl _value,
      $Res Function(_$FetchPurchaseOrderFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FetchPurchaseOrderFailureImpl(
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

class _$FetchPurchaseOrderFailureImpl implements _FetchPurchaseOrderFailure {
  const _$FetchPurchaseOrderFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchPurchaseOrderState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPurchaseOrderFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPurchaseOrderFailureImplCopyWith<_$FetchPurchaseOrderFailureImpl>
      get copyWith => __$$FetchPurchaseOrderFailureImplCopyWithImpl<
          _$FetchPurchaseOrderFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)
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
    TResult? Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
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
    TResult Function(
            List<PurchaseOrder> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchPurchaseOrderInitial value) initial,
    required TResult Function(_FetchPurchaseOrderLoading value) loading,
    required TResult Function(_FetchPurchaseOrderSuccess value) success,
    required TResult Function(_FetchPurchaseOrderFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPurchaseOrderInitial value)? initial,
    TResult? Function(_FetchPurchaseOrderLoading value)? loading,
    TResult? Function(_FetchPurchaseOrderSuccess value)? success,
    TResult? Function(_FetchPurchaseOrderFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPurchaseOrderInitial value)? initial,
    TResult Function(_FetchPurchaseOrderLoading value)? loading,
    TResult Function(_FetchPurchaseOrderSuccess value)? success,
    TResult Function(_FetchPurchaseOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchPurchaseOrderFailure implements FetchPurchaseOrderState {
  const factory _FetchPurchaseOrderFailure(final Failure failure) =
      _$FetchPurchaseOrderFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FetchPurchaseOrderFailureImplCopyWith<_$FetchPurchaseOrderFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

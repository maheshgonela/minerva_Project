// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_sales_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchSalesOrderEvent {
  String get businessPartnerId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String businessPartnerId) fetchInitialSalesOrder,
    required TResult Function(String businessPartnerId) fetchMoreSalesOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String businessPartnerId)? fetchInitialSalesOrder,
    TResult? Function(String businessPartnerId)? fetchMoreSalesOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String businessPartnerId)? fetchInitialSalesOrder,
    TResult Function(String businessPartnerId)? fetchMoreSalesOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialSalesOrder value)
        fetchInitialSalesOrder,
    required TResult Function(_FetchMoreSalesOrder value) fetchMoreSalesOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialSalesOrder value)? fetchInitialSalesOrder,
    TResult? Function(_FetchMoreSalesOrder value)? fetchMoreSalesOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialSalesOrder value)? fetchInitialSalesOrder,
    TResult Function(_FetchMoreSalesOrder value)? fetchMoreSalesOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchSalesOrderEventCopyWith<FetchSalesOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSalesOrderEventCopyWith<$Res> {
  factory $FetchSalesOrderEventCopyWith(FetchSalesOrderEvent value,
          $Res Function(FetchSalesOrderEvent) then) =
      _$FetchSalesOrderEventCopyWithImpl<$Res, FetchSalesOrderEvent>;
  @useResult
  $Res call({String businessPartnerId});
}

/// @nodoc
class _$FetchSalesOrderEventCopyWithImpl<$Res,
        $Val extends FetchSalesOrderEvent>
    implements $FetchSalesOrderEventCopyWith<$Res> {
  _$FetchSalesOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessPartnerId = null,
  }) {
    return _then(_value.copyWith(
      businessPartnerId: null == businessPartnerId
          ? _value.businessPartnerId
          : businessPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchInitialSalesOrderImplCopyWith<$Res>
    implements $FetchSalesOrderEventCopyWith<$Res> {
  factory _$$FetchInitialSalesOrderImplCopyWith(
          _$FetchInitialSalesOrderImpl value,
          $Res Function(_$FetchInitialSalesOrderImpl) then) =
      __$$FetchInitialSalesOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String businessPartnerId});
}

/// @nodoc
class __$$FetchInitialSalesOrderImplCopyWithImpl<$Res>
    extends _$FetchSalesOrderEventCopyWithImpl<$Res,
        _$FetchInitialSalesOrderImpl>
    implements _$$FetchInitialSalesOrderImplCopyWith<$Res> {
  __$$FetchInitialSalesOrderImplCopyWithImpl(
      _$FetchInitialSalesOrderImpl _value,
      $Res Function(_$FetchInitialSalesOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessPartnerId = null,
  }) {
    return _then(_$FetchInitialSalesOrderImpl(
      null == businessPartnerId
          ? _value.businessPartnerId
          : businessPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchInitialSalesOrderImpl implements _FetchInitialSalesOrder {
  const _$FetchInitialSalesOrderImpl(this.businessPartnerId);

  @override
  final String businessPartnerId;

  @override
  String toString() {
    return 'FetchSalesOrderEvent.fetchInitialSalesOrder(businessPartnerId: $businessPartnerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchInitialSalesOrderImpl &&
            (identical(other.businessPartnerId, businessPartnerId) ||
                other.businessPartnerId == businessPartnerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, businessPartnerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchInitialSalesOrderImplCopyWith<_$FetchInitialSalesOrderImpl>
      get copyWith => __$$FetchInitialSalesOrderImplCopyWithImpl<
          _$FetchInitialSalesOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String businessPartnerId) fetchInitialSalesOrder,
    required TResult Function(String businessPartnerId) fetchMoreSalesOrder,
  }) {
    return fetchInitialSalesOrder(businessPartnerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String businessPartnerId)? fetchInitialSalesOrder,
    TResult? Function(String businessPartnerId)? fetchMoreSalesOrder,
  }) {
    return fetchInitialSalesOrder?.call(businessPartnerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String businessPartnerId)? fetchInitialSalesOrder,
    TResult Function(String businessPartnerId)? fetchMoreSalesOrder,
    required TResult orElse(),
  }) {
    if (fetchInitialSalesOrder != null) {
      return fetchInitialSalesOrder(businessPartnerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialSalesOrder value)
        fetchInitialSalesOrder,
    required TResult Function(_FetchMoreSalesOrder value) fetchMoreSalesOrder,
  }) {
    return fetchInitialSalesOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialSalesOrder value)? fetchInitialSalesOrder,
    TResult? Function(_FetchMoreSalesOrder value)? fetchMoreSalesOrder,
  }) {
    return fetchInitialSalesOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialSalesOrder value)? fetchInitialSalesOrder,
    TResult Function(_FetchMoreSalesOrder value)? fetchMoreSalesOrder,
    required TResult orElse(),
  }) {
    if (fetchInitialSalesOrder != null) {
      return fetchInitialSalesOrder(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialSalesOrder implements FetchSalesOrderEvent {
  const factory _FetchInitialSalesOrder(final String businessPartnerId) =
      _$FetchInitialSalesOrderImpl;

  @override
  String get businessPartnerId;
  @override
  @JsonKey(ignore: true)
  _$$FetchInitialSalesOrderImplCopyWith<_$FetchInitialSalesOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreSalesOrderImplCopyWith<$Res>
    implements $FetchSalesOrderEventCopyWith<$Res> {
  factory _$$FetchMoreSalesOrderImplCopyWith(_$FetchMoreSalesOrderImpl value,
          $Res Function(_$FetchMoreSalesOrderImpl) then) =
      __$$FetchMoreSalesOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String businessPartnerId});
}

/// @nodoc
class __$$FetchMoreSalesOrderImplCopyWithImpl<$Res>
    extends _$FetchSalesOrderEventCopyWithImpl<$Res, _$FetchMoreSalesOrderImpl>
    implements _$$FetchMoreSalesOrderImplCopyWith<$Res> {
  __$$FetchMoreSalesOrderImplCopyWithImpl(_$FetchMoreSalesOrderImpl _value,
      $Res Function(_$FetchMoreSalesOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessPartnerId = null,
  }) {
    return _then(_$FetchMoreSalesOrderImpl(
      null == businessPartnerId
          ? _value.businessPartnerId
          : businessPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchMoreSalesOrderImpl implements _FetchMoreSalesOrder {
  const _$FetchMoreSalesOrderImpl(this.businessPartnerId);

  @override
  final String businessPartnerId;

  @override
  String toString() {
    return 'FetchSalesOrderEvent.fetchMoreSalesOrder(businessPartnerId: $businessPartnerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoreSalesOrderImpl &&
            (identical(other.businessPartnerId, businessPartnerId) ||
                other.businessPartnerId == businessPartnerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, businessPartnerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreSalesOrderImplCopyWith<_$FetchMoreSalesOrderImpl> get copyWith =>
      __$$FetchMoreSalesOrderImplCopyWithImpl<_$FetchMoreSalesOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String businessPartnerId) fetchInitialSalesOrder,
    required TResult Function(String businessPartnerId) fetchMoreSalesOrder,
  }) {
    return fetchMoreSalesOrder(businessPartnerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String businessPartnerId)? fetchInitialSalesOrder,
    TResult? Function(String businessPartnerId)? fetchMoreSalesOrder,
  }) {
    return fetchMoreSalesOrder?.call(businessPartnerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String businessPartnerId)? fetchInitialSalesOrder,
    TResult Function(String businessPartnerId)? fetchMoreSalesOrder,
    required TResult orElse(),
  }) {
    if (fetchMoreSalesOrder != null) {
      return fetchMoreSalesOrder(businessPartnerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialSalesOrder value)
        fetchInitialSalesOrder,
    required TResult Function(_FetchMoreSalesOrder value) fetchMoreSalesOrder,
  }) {
    return fetchMoreSalesOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialSalesOrder value)? fetchInitialSalesOrder,
    TResult? Function(_FetchMoreSalesOrder value)? fetchMoreSalesOrder,
  }) {
    return fetchMoreSalesOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialSalesOrder value)? fetchInitialSalesOrder,
    TResult Function(_FetchMoreSalesOrder value)? fetchMoreSalesOrder,
    required TResult orElse(),
  }) {
    if (fetchMoreSalesOrder != null) {
      return fetchMoreSalesOrder(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreSalesOrder implements FetchSalesOrderEvent {
  const factory _FetchMoreSalesOrder(final String businessPartnerId) =
      _$FetchMoreSalesOrderImpl;

  @override
  String get businessPartnerId;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoreSalesOrderImplCopyWith<_$FetchMoreSalesOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchSalesOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SalesOrder> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<SalesOrder> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SalesOrder> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSalesOrderInitial value) initial,
    required TResult Function(_FetchSalesOrderLoading value) loading,
    required TResult Function(_FetchSalesOrderSuccess value) success,
    required TResult Function(_FetchSalesOrderFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSalesOrderInitial value)? initial,
    TResult? Function(_FetchSalesOrderLoading value)? loading,
    TResult? Function(_FetchSalesOrderSuccess value)? success,
    TResult? Function(_FetchSalesOrderFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSalesOrderInitial value)? initial,
    TResult Function(_FetchSalesOrderLoading value)? loading,
    TResult Function(_FetchSalesOrderSuccess value)? success,
    TResult Function(_FetchSalesOrderFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSalesOrderStateCopyWith<$Res> {
  factory $FetchSalesOrderStateCopyWith(FetchSalesOrderState value,
          $Res Function(FetchSalesOrderState) then) =
      _$FetchSalesOrderStateCopyWithImpl<$Res, FetchSalesOrderState>;
}

/// @nodoc
class _$FetchSalesOrderStateCopyWithImpl<$Res,
        $Val extends FetchSalesOrderState>
    implements $FetchSalesOrderStateCopyWith<$Res> {
  _$FetchSalesOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchSalesOrderInitialImplCopyWith<$Res> {
  factory _$$FetchSalesOrderInitialImplCopyWith(
          _$FetchSalesOrderInitialImpl value,
          $Res Function(_$FetchSalesOrderInitialImpl) then) =
      __$$FetchSalesOrderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSalesOrderInitialImplCopyWithImpl<$Res>
    extends _$FetchSalesOrderStateCopyWithImpl<$Res,
        _$FetchSalesOrderInitialImpl>
    implements _$$FetchSalesOrderInitialImplCopyWith<$Res> {
  __$$FetchSalesOrderInitialImplCopyWithImpl(
      _$FetchSalesOrderInitialImpl _value,
      $Res Function(_$FetchSalesOrderInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSalesOrderInitialImpl implements _FetchSalesOrderInitial {
  const _$FetchSalesOrderInitialImpl();

  @override
  String toString() {
    return 'FetchSalesOrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSalesOrderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SalesOrder> records, bool hasReachedMax, String? query)
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
            List<SalesOrder> records, bool hasReachedMax, String? query)?
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
            List<SalesOrder> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchSalesOrderInitial value) initial,
    required TResult Function(_FetchSalesOrderLoading value) loading,
    required TResult Function(_FetchSalesOrderSuccess value) success,
    required TResult Function(_FetchSalesOrderFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSalesOrderInitial value)? initial,
    TResult? Function(_FetchSalesOrderLoading value)? loading,
    TResult? Function(_FetchSalesOrderSuccess value)? success,
    TResult? Function(_FetchSalesOrderFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSalesOrderInitial value)? initial,
    TResult Function(_FetchSalesOrderLoading value)? loading,
    TResult Function(_FetchSalesOrderSuccess value)? success,
    TResult Function(_FetchSalesOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchSalesOrderInitial implements FetchSalesOrderState {
  const factory _FetchSalesOrderInitial() = _$FetchSalesOrderInitialImpl;
}

/// @nodoc
abstract class _$$FetchSalesOrderLoadingImplCopyWith<$Res> {
  factory _$$FetchSalesOrderLoadingImplCopyWith(
          _$FetchSalesOrderLoadingImpl value,
          $Res Function(_$FetchSalesOrderLoadingImpl) then) =
      __$$FetchSalesOrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSalesOrderLoadingImplCopyWithImpl<$Res>
    extends _$FetchSalesOrderStateCopyWithImpl<$Res,
        _$FetchSalesOrderLoadingImpl>
    implements _$$FetchSalesOrderLoadingImplCopyWith<$Res> {
  __$$FetchSalesOrderLoadingImplCopyWithImpl(
      _$FetchSalesOrderLoadingImpl _value,
      $Res Function(_$FetchSalesOrderLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSalesOrderLoadingImpl implements _FetchSalesOrderLoading {
  const _$FetchSalesOrderLoadingImpl();

  @override
  String toString() {
    return 'FetchSalesOrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSalesOrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SalesOrder> records, bool hasReachedMax, String? query)
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
            List<SalesOrder> records, bool hasReachedMax, String? query)?
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
            List<SalesOrder> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchSalesOrderInitial value) initial,
    required TResult Function(_FetchSalesOrderLoading value) loading,
    required TResult Function(_FetchSalesOrderSuccess value) success,
    required TResult Function(_FetchSalesOrderFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSalesOrderInitial value)? initial,
    TResult? Function(_FetchSalesOrderLoading value)? loading,
    TResult? Function(_FetchSalesOrderSuccess value)? success,
    TResult? Function(_FetchSalesOrderFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSalesOrderInitial value)? initial,
    TResult Function(_FetchSalesOrderLoading value)? loading,
    TResult Function(_FetchSalesOrderSuccess value)? success,
    TResult Function(_FetchSalesOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchSalesOrderLoading implements FetchSalesOrderState {
  const factory _FetchSalesOrderLoading() = _$FetchSalesOrderLoadingImpl;
}

/// @nodoc
abstract class _$$FetchSalesOrderSuccessImplCopyWith<$Res> {
  factory _$$FetchSalesOrderSuccessImplCopyWith(
          _$FetchSalesOrderSuccessImpl value,
          $Res Function(_$FetchSalesOrderSuccessImpl) then) =
      __$$FetchSalesOrderSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SalesOrder> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$FetchSalesOrderSuccessImplCopyWithImpl<$Res>
    extends _$FetchSalesOrderStateCopyWithImpl<$Res,
        _$FetchSalesOrderSuccessImpl>
    implements _$$FetchSalesOrderSuccessImplCopyWith<$Res> {
  __$$FetchSalesOrderSuccessImplCopyWithImpl(
      _$FetchSalesOrderSuccessImpl _value,
      $Res Function(_$FetchSalesOrderSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$FetchSalesOrderSuccessImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<SalesOrder>,
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

class _$FetchSalesOrderSuccessImpl implements _FetchSalesOrderSuccess {
  const _$FetchSalesOrderSuccessImpl(
      {required final List<SalesOrder> records,
      required this.hasReachedMax,
      this.query})
      : _records = records;

  final List<SalesOrder> _records;
  @override
  List<SalesOrder> get records {
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
    return 'FetchSalesOrderState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSalesOrderSuccessImpl &&
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
  _$$FetchSalesOrderSuccessImplCopyWith<_$FetchSalesOrderSuccessImpl>
      get copyWith => __$$FetchSalesOrderSuccessImplCopyWithImpl<
          _$FetchSalesOrderSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SalesOrder> records, bool hasReachedMax, String? query)
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
            List<SalesOrder> records, bool hasReachedMax, String? query)?
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
            List<SalesOrder> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchSalesOrderInitial value) initial,
    required TResult Function(_FetchSalesOrderLoading value) loading,
    required TResult Function(_FetchSalesOrderSuccess value) success,
    required TResult Function(_FetchSalesOrderFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSalesOrderInitial value)? initial,
    TResult? Function(_FetchSalesOrderLoading value)? loading,
    TResult? Function(_FetchSalesOrderSuccess value)? success,
    TResult? Function(_FetchSalesOrderFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSalesOrderInitial value)? initial,
    TResult Function(_FetchSalesOrderLoading value)? loading,
    TResult Function(_FetchSalesOrderSuccess value)? success,
    TResult Function(_FetchSalesOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchSalesOrderSuccess implements FetchSalesOrderState {
  const factory _FetchSalesOrderSuccess(
      {required final List<SalesOrder> records,
      required final bool hasReachedMax,
      final String? query}) = _$FetchSalesOrderSuccessImpl;

  List<SalesOrder> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$FetchSalesOrderSuccessImplCopyWith<_$FetchSalesOrderSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSalesOrderFailureImplCopyWith<$Res> {
  factory _$$FetchSalesOrderFailureImplCopyWith(
          _$FetchSalesOrderFailureImpl value,
          $Res Function(_$FetchSalesOrderFailureImpl) then) =
      __$$FetchSalesOrderFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FetchSalesOrderFailureImplCopyWithImpl<$Res>
    extends _$FetchSalesOrderStateCopyWithImpl<$Res,
        _$FetchSalesOrderFailureImpl>
    implements _$$FetchSalesOrderFailureImplCopyWith<$Res> {
  __$$FetchSalesOrderFailureImplCopyWithImpl(
      _$FetchSalesOrderFailureImpl _value,
      $Res Function(_$FetchSalesOrderFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FetchSalesOrderFailureImpl(
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

class _$FetchSalesOrderFailureImpl implements _FetchSalesOrderFailure {
  const _$FetchSalesOrderFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchSalesOrderState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSalesOrderFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSalesOrderFailureImplCopyWith<_$FetchSalesOrderFailureImpl>
      get copyWith => __$$FetchSalesOrderFailureImplCopyWithImpl<
          _$FetchSalesOrderFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SalesOrder> records, bool hasReachedMax, String? query)
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
            List<SalesOrder> records, bool hasReachedMax, String? query)?
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
            List<SalesOrder> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchSalesOrderInitial value) initial,
    required TResult Function(_FetchSalesOrderLoading value) loading,
    required TResult Function(_FetchSalesOrderSuccess value) success,
    required TResult Function(_FetchSalesOrderFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSalesOrderInitial value)? initial,
    TResult? Function(_FetchSalesOrderLoading value)? loading,
    TResult? Function(_FetchSalesOrderSuccess value)? success,
    TResult? Function(_FetchSalesOrderFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSalesOrderInitial value)? initial,
    TResult Function(_FetchSalesOrderLoading value)? loading,
    TResult Function(_FetchSalesOrderSuccess value)? success,
    TResult Function(_FetchSalesOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchSalesOrderFailure implements FetchSalesOrderState {
  const factory _FetchSalesOrderFailure(final Failure failure) =
      _$FetchSalesOrderFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FetchSalesOrderFailureImplCopyWith<_$FetchSalesOrderFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

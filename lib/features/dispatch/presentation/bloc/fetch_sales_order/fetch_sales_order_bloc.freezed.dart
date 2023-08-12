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
abstract class _$$_FetchInitialSalesOrderCopyWith<$Res>
    implements $FetchSalesOrderEventCopyWith<$Res> {
  factory _$$_FetchInitialSalesOrderCopyWith(_$_FetchInitialSalesOrder value,
          $Res Function(_$_FetchInitialSalesOrder) then) =
      __$$_FetchInitialSalesOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String businessPartnerId});
}

/// @nodoc
class __$$_FetchInitialSalesOrderCopyWithImpl<$Res>
    extends _$FetchSalesOrderEventCopyWithImpl<$Res, _$_FetchInitialSalesOrder>
    implements _$$_FetchInitialSalesOrderCopyWith<$Res> {
  __$$_FetchInitialSalesOrderCopyWithImpl(_$_FetchInitialSalesOrder _value,
      $Res Function(_$_FetchInitialSalesOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessPartnerId = null,
  }) {
    return _then(_$_FetchInitialSalesOrder(
      null == businessPartnerId
          ? _value.businessPartnerId
          : businessPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchInitialSalesOrder implements _FetchInitialSalesOrder {
  const _$_FetchInitialSalesOrder(this.businessPartnerId);

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
            other is _$_FetchInitialSalesOrder &&
            (identical(other.businessPartnerId, businessPartnerId) ||
                other.businessPartnerId == businessPartnerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, businessPartnerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchInitialSalesOrderCopyWith<_$_FetchInitialSalesOrder> get copyWith =>
      __$$_FetchInitialSalesOrderCopyWithImpl<_$_FetchInitialSalesOrder>(
          this, _$identity);

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
      _$_FetchInitialSalesOrder;

  @override
  String get businessPartnerId;
  @override
  @JsonKey(ignore: true)
  _$$_FetchInitialSalesOrderCopyWith<_$_FetchInitialSalesOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchMoreSalesOrderCopyWith<$Res>
    implements $FetchSalesOrderEventCopyWith<$Res> {
  factory _$$_FetchMoreSalesOrderCopyWith(_$_FetchMoreSalesOrder value,
          $Res Function(_$_FetchMoreSalesOrder) then) =
      __$$_FetchMoreSalesOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String businessPartnerId});
}

/// @nodoc
class __$$_FetchMoreSalesOrderCopyWithImpl<$Res>
    extends _$FetchSalesOrderEventCopyWithImpl<$Res, _$_FetchMoreSalesOrder>
    implements _$$_FetchMoreSalesOrderCopyWith<$Res> {
  __$$_FetchMoreSalesOrderCopyWithImpl(_$_FetchMoreSalesOrder _value,
      $Res Function(_$_FetchMoreSalesOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessPartnerId = null,
  }) {
    return _then(_$_FetchMoreSalesOrder(
      null == businessPartnerId
          ? _value.businessPartnerId
          : businessPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchMoreSalesOrder implements _FetchMoreSalesOrder {
  const _$_FetchMoreSalesOrder(this.businessPartnerId);

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
            other is _$_FetchMoreSalesOrder &&
            (identical(other.businessPartnerId, businessPartnerId) ||
                other.businessPartnerId == businessPartnerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, businessPartnerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchMoreSalesOrderCopyWith<_$_FetchMoreSalesOrder> get copyWith =>
      __$$_FetchMoreSalesOrderCopyWithImpl<_$_FetchMoreSalesOrder>(
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
      _$_FetchMoreSalesOrder;

  @override
  String get businessPartnerId;
  @override
  @JsonKey(ignore: true)
  _$$_FetchMoreSalesOrderCopyWith<_$_FetchMoreSalesOrder> get copyWith =>
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
abstract class _$$_FetchSalesOrderInitialCopyWith<$Res> {
  factory _$$_FetchSalesOrderInitialCopyWith(_$_FetchSalesOrderInitial value,
          $Res Function(_$_FetchSalesOrderInitial) then) =
      __$$_FetchSalesOrderInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchSalesOrderInitialCopyWithImpl<$Res>
    extends _$FetchSalesOrderStateCopyWithImpl<$Res, _$_FetchSalesOrderInitial>
    implements _$$_FetchSalesOrderInitialCopyWith<$Res> {
  __$$_FetchSalesOrderInitialCopyWithImpl(_$_FetchSalesOrderInitial _value,
      $Res Function(_$_FetchSalesOrderInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchSalesOrderInitial implements _FetchSalesOrderInitial {
  const _$_FetchSalesOrderInitial();

  @override
  String toString() {
    return 'FetchSalesOrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSalesOrderInitial);
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
  const factory _FetchSalesOrderInitial() = _$_FetchSalesOrderInitial;
}

/// @nodoc
abstract class _$$_FetchSalesOrderLoadingCopyWith<$Res> {
  factory _$$_FetchSalesOrderLoadingCopyWith(_$_FetchSalesOrderLoading value,
          $Res Function(_$_FetchSalesOrderLoading) then) =
      __$$_FetchSalesOrderLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchSalesOrderLoadingCopyWithImpl<$Res>
    extends _$FetchSalesOrderStateCopyWithImpl<$Res, _$_FetchSalesOrderLoading>
    implements _$$_FetchSalesOrderLoadingCopyWith<$Res> {
  __$$_FetchSalesOrderLoadingCopyWithImpl(_$_FetchSalesOrderLoading _value,
      $Res Function(_$_FetchSalesOrderLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchSalesOrderLoading implements _FetchSalesOrderLoading {
  const _$_FetchSalesOrderLoading();

  @override
  String toString() {
    return 'FetchSalesOrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSalesOrderLoading);
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
  const factory _FetchSalesOrderLoading() = _$_FetchSalesOrderLoading;
}

/// @nodoc
abstract class _$$_FetchSalesOrderSuccessCopyWith<$Res> {
  factory _$$_FetchSalesOrderSuccessCopyWith(_$_FetchSalesOrderSuccess value,
          $Res Function(_$_FetchSalesOrderSuccess) then) =
      __$$_FetchSalesOrderSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SalesOrder> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$_FetchSalesOrderSuccessCopyWithImpl<$Res>
    extends _$FetchSalesOrderStateCopyWithImpl<$Res, _$_FetchSalesOrderSuccess>
    implements _$$_FetchSalesOrderSuccessCopyWith<$Res> {
  __$$_FetchSalesOrderSuccessCopyWithImpl(_$_FetchSalesOrderSuccess _value,
      $Res Function(_$_FetchSalesOrderSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchSalesOrderSuccess(
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

class _$_FetchSalesOrderSuccess implements _FetchSalesOrderSuccess {
  const _$_FetchSalesOrderSuccess(
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
            other is _$_FetchSalesOrderSuccess &&
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
  _$$_FetchSalesOrderSuccessCopyWith<_$_FetchSalesOrderSuccess> get copyWith =>
      __$$_FetchSalesOrderSuccessCopyWithImpl<_$_FetchSalesOrderSuccess>(
          this, _$identity);

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
      final String? query}) = _$_FetchSalesOrderSuccess;

  List<SalesOrder> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_FetchSalesOrderSuccessCopyWith<_$_FetchSalesOrderSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchSalesOrderFailureCopyWith<$Res> {
  factory _$$_FetchSalesOrderFailureCopyWith(_$_FetchSalesOrderFailure value,
          $Res Function(_$_FetchSalesOrderFailure) then) =
      __$$_FetchSalesOrderFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchSalesOrderFailureCopyWithImpl<$Res>
    extends _$FetchSalesOrderStateCopyWithImpl<$Res, _$_FetchSalesOrderFailure>
    implements _$$_FetchSalesOrderFailureCopyWith<$Res> {
  __$$_FetchSalesOrderFailureCopyWithImpl(_$_FetchSalesOrderFailure _value,
      $Res Function(_$_FetchSalesOrderFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchSalesOrderFailure(
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

class _$_FetchSalesOrderFailure implements _FetchSalesOrderFailure {
  const _$_FetchSalesOrderFailure(this.failure);

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
            other is _$_FetchSalesOrderFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchSalesOrderFailureCopyWith<_$_FetchSalesOrderFailure> get copyWith =>
      __$$_FetchSalesOrderFailureCopyWithImpl<_$_FetchSalesOrderFailure>(
          this, _$identity);

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
      _$_FetchSalesOrderFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FetchSalesOrderFailureCopyWith<_$_FetchSalesOrderFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

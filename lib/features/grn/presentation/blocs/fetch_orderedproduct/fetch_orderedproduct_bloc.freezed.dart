// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_orderedproduct_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchOrderedproductEvent {
  String get purchaseOrderId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId)
        fetchInitialOrderedproduct,
    required TResult Function(String purchaseOrderId) fetchMoreOrderedproduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId)? fetchInitialOrderedproduct,
    TResult? Function(String purchaseOrderId)? fetchMoreOrderedproduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId)? fetchInitialOrderedproduct,
    TResult Function(String purchaseOrderId)? fetchMoreOrderedproduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialOrderedproduct value)
        fetchInitialOrderedproduct,
    required TResult Function(_fetchMoreOrderedproduct value)
        fetchMoreOrderedproduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialOrderedproduct value)?
        fetchInitialOrderedproduct,
    TResult? Function(_fetchMoreOrderedproduct value)? fetchMoreOrderedproduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialOrderedproduct value)?
        fetchInitialOrderedproduct,
    TResult Function(_fetchMoreOrderedproduct value)? fetchMoreOrderedproduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchOrderedproductEventCopyWith<FetchOrderedproductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchOrderedproductEventCopyWith<$Res> {
  factory $FetchOrderedproductEventCopyWith(FetchOrderedproductEvent value,
          $Res Function(FetchOrderedproductEvent) then) =
      _$FetchOrderedproductEventCopyWithImpl<$Res, FetchOrderedproductEvent>;
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class _$FetchOrderedproductEventCopyWithImpl<$Res,
        $Val extends FetchOrderedproductEvent>
    implements $FetchOrderedproductEventCopyWith<$Res> {
  _$FetchOrderedproductEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_fetchInitialOrderedproductCopyWith<$Res>
    implements $FetchOrderedproductEventCopyWith<$Res> {
  factory _$$_fetchInitialOrderedproductCopyWith(
          _$_fetchInitialOrderedproduct value,
          $Res Function(_$_fetchInitialOrderedproduct) then) =
      __$$_fetchInitialOrderedproductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class __$$_fetchInitialOrderedproductCopyWithImpl<$Res>
    extends _$FetchOrderedproductEventCopyWithImpl<$Res,
        _$_fetchInitialOrderedproduct>
    implements _$$_fetchInitialOrderedproductCopyWith<$Res> {
  __$$_fetchInitialOrderedproductCopyWithImpl(
      _$_fetchInitialOrderedproduct _value,
      $Res Function(_$_fetchInitialOrderedproduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_$_fetchInitialOrderedproduct(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_fetchInitialOrderedproduct implements _fetchInitialOrderedproduct {
  const _$_fetchInitialOrderedproduct(this.purchaseOrderId);

  @override
  final String purchaseOrderId;

  @override
  String toString() {
    return 'FetchOrderedproductEvent.fetchInitialOrderedproduct(purchaseOrderId: $purchaseOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_fetchInitialOrderedproduct &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_fetchInitialOrderedproductCopyWith<_$_fetchInitialOrderedproduct>
      get copyWith => __$$_fetchInitialOrderedproductCopyWithImpl<
          _$_fetchInitialOrderedproduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId)
        fetchInitialOrderedproduct,
    required TResult Function(String purchaseOrderId) fetchMoreOrderedproduct,
  }) {
    return fetchInitialOrderedproduct(purchaseOrderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId)? fetchInitialOrderedproduct,
    TResult? Function(String purchaseOrderId)? fetchMoreOrderedproduct,
  }) {
    return fetchInitialOrderedproduct?.call(purchaseOrderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId)? fetchInitialOrderedproduct,
    TResult Function(String purchaseOrderId)? fetchMoreOrderedproduct,
    required TResult orElse(),
  }) {
    if (fetchInitialOrderedproduct != null) {
      return fetchInitialOrderedproduct(purchaseOrderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialOrderedproduct value)
        fetchInitialOrderedproduct,
    required TResult Function(_fetchMoreOrderedproduct value)
        fetchMoreOrderedproduct,
  }) {
    return fetchInitialOrderedproduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialOrderedproduct value)?
        fetchInitialOrderedproduct,
    TResult? Function(_fetchMoreOrderedproduct value)? fetchMoreOrderedproduct,
  }) {
    return fetchInitialOrderedproduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialOrderedproduct value)?
        fetchInitialOrderedproduct,
    TResult Function(_fetchMoreOrderedproduct value)? fetchMoreOrderedproduct,
    required TResult orElse(),
  }) {
    if (fetchInitialOrderedproduct != null) {
      return fetchInitialOrderedproduct(this);
    }
    return orElse();
  }
}

abstract class _fetchInitialOrderedproduct implements FetchOrderedproductEvent {
  const factory _fetchInitialOrderedproduct(final String purchaseOrderId) =
      _$_fetchInitialOrderedproduct;

  @override
  String get purchaseOrderId;
  @override
  @JsonKey(ignore: true)
  _$$_fetchInitialOrderedproductCopyWith<_$_fetchInitialOrderedproduct>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_fetchMoreOrderedproductCopyWith<$Res>
    implements $FetchOrderedproductEventCopyWith<$Res> {
  factory _$$_fetchMoreOrderedproductCopyWith(_$_fetchMoreOrderedproduct value,
          $Res Function(_$_fetchMoreOrderedproduct) then) =
      __$$_fetchMoreOrderedproductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class __$$_fetchMoreOrderedproductCopyWithImpl<$Res>
    extends _$FetchOrderedproductEventCopyWithImpl<$Res,
        _$_fetchMoreOrderedproduct>
    implements _$$_fetchMoreOrderedproductCopyWith<$Res> {
  __$$_fetchMoreOrderedproductCopyWithImpl(_$_fetchMoreOrderedproduct _value,
      $Res Function(_$_fetchMoreOrderedproduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_$_fetchMoreOrderedproduct(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_fetchMoreOrderedproduct implements _fetchMoreOrderedproduct {
  const _$_fetchMoreOrderedproduct(this.purchaseOrderId);

  @override
  final String purchaseOrderId;

  @override
  String toString() {
    return 'FetchOrderedproductEvent.fetchMoreOrderedproduct(purchaseOrderId: $purchaseOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_fetchMoreOrderedproduct &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_fetchMoreOrderedproductCopyWith<_$_fetchMoreOrderedproduct>
      get copyWith =>
          __$$_fetchMoreOrderedproductCopyWithImpl<_$_fetchMoreOrderedproduct>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId)
        fetchInitialOrderedproduct,
    required TResult Function(String purchaseOrderId) fetchMoreOrderedproduct,
  }) {
    return fetchMoreOrderedproduct(purchaseOrderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId)? fetchInitialOrderedproduct,
    TResult? Function(String purchaseOrderId)? fetchMoreOrderedproduct,
  }) {
    return fetchMoreOrderedproduct?.call(purchaseOrderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId)? fetchInitialOrderedproduct,
    TResult Function(String purchaseOrderId)? fetchMoreOrderedproduct,
    required TResult orElse(),
  }) {
    if (fetchMoreOrderedproduct != null) {
      return fetchMoreOrderedproduct(purchaseOrderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialOrderedproduct value)
        fetchInitialOrderedproduct,
    required TResult Function(_fetchMoreOrderedproduct value)
        fetchMoreOrderedproduct,
  }) {
    return fetchMoreOrderedproduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialOrderedproduct value)?
        fetchInitialOrderedproduct,
    TResult? Function(_fetchMoreOrderedproduct value)? fetchMoreOrderedproduct,
  }) {
    return fetchMoreOrderedproduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialOrderedproduct value)?
        fetchInitialOrderedproduct,
    TResult Function(_fetchMoreOrderedproduct value)? fetchMoreOrderedproduct,
    required TResult orElse(),
  }) {
    if (fetchMoreOrderedproduct != null) {
      return fetchMoreOrderedproduct(this);
    }
    return orElse();
  }
}

abstract class _fetchMoreOrderedproduct implements FetchOrderedproductEvent {
  const factory _fetchMoreOrderedproduct(final String purchaseOrderId) =
      _$_fetchMoreOrderedproduct;

  @override
  String get purchaseOrderId;
  @override
  @JsonKey(ignore: true)
  _$$_fetchMoreOrderedproductCopyWith<_$_fetchMoreOrderedproduct>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchOrderedproductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderedProduct> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrderedproductInitial value) initial,
    required TResult Function(_FetchOrderedproductLoading value) loading,
    required TResult Function(_FetchOrderedproductSuccess value) success,
    required TResult Function(_FetchOrderedproductFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrderedproductInitial value)? initial,
    TResult? Function(_FetchOrderedproductLoading value)? loading,
    TResult? Function(_FetchOrderedproductSuccess value)? success,
    TResult? Function(_FetchOrderedproductFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderedproductInitial value)? initial,
    TResult Function(_FetchOrderedproductLoading value)? loading,
    TResult Function(_FetchOrderedproductSuccess value)? success,
    TResult Function(_FetchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchOrderedproductStateCopyWith<$Res> {
  factory $FetchOrderedproductStateCopyWith(FetchOrderedproductState value,
          $Res Function(FetchOrderedproductState) then) =
      _$FetchOrderedproductStateCopyWithImpl<$Res, FetchOrderedproductState>;
}

/// @nodoc
class _$FetchOrderedproductStateCopyWithImpl<$Res,
        $Val extends FetchOrderedproductState>
    implements $FetchOrderedproductStateCopyWith<$Res> {
  _$FetchOrderedproductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchOrderedproductInitialCopyWith<$Res> {
  factory _$$_FetchOrderedproductInitialCopyWith(
          _$_FetchOrderedproductInitial value,
          $Res Function(_$_FetchOrderedproductInitial) then) =
      __$$_FetchOrderedproductInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchOrderedproductInitialCopyWithImpl<$Res>
    extends _$FetchOrderedproductStateCopyWithImpl<$Res,
        _$_FetchOrderedproductInitial>
    implements _$$_FetchOrderedproductInitialCopyWith<$Res> {
  __$$_FetchOrderedproductInitialCopyWithImpl(
      _$_FetchOrderedproductInitial _value,
      $Res Function(_$_FetchOrderedproductInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchOrderedproductInitial implements _FetchOrderedproductInitial {
  const _$_FetchOrderedproductInitial();

  @override
  String toString() {
    return 'FetchOrderedproductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrderedproductInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderedProduct> records, bool hasReachedMax, String? query)
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
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
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
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchOrderedproductInitial value) initial,
    required TResult Function(_FetchOrderedproductLoading value) loading,
    required TResult Function(_FetchOrderedproductSuccess value) success,
    required TResult Function(_FetchOrderedproductFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrderedproductInitial value)? initial,
    TResult? Function(_FetchOrderedproductLoading value)? loading,
    TResult? Function(_FetchOrderedproductSuccess value)? success,
    TResult? Function(_FetchOrderedproductFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderedproductInitial value)? initial,
    TResult Function(_FetchOrderedproductLoading value)? loading,
    TResult Function(_FetchOrderedproductSuccess value)? success,
    TResult Function(_FetchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchOrderedproductInitial implements FetchOrderedproductState {
  const factory _FetchOrderedproductInitial() = _$_FetchOrderedproductInitial;
}

/// @nodoc
abstract class _$$_FetchOrderedproductLoadingCopyWith<$Res> {
  factory _$$_FetchOrderedproductLoadingCopyWith(
          _$_FetchOrderedproductLoading value,
          $Res Function(_$_FetchOrderedproductLoading) then) =
      __$$_FetchOrderedproductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchOrderedproductLoadingCopyWithImpl<$Res>
    extends _$FetchOrderedproductStateCopyWithImpl<$Res,
        _$_FetchOrderedproductLoading>
    implements _$$_FetchOrderedproductLoadingCopyWith<$Res> {
  __$$_FetchOrderedproductLoadingCopyWithImpl(
      _$_FetchOrderedproductLoading _value,
      $Res Function(_$_FetchOrderedproductLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchOrderedproductLoading implements _FetchOrderedproductLoading {
  const _$_FetchOrderedproductLoading();

  @override
  String toString() {
    return 'FetchOrderedproductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrderedproductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderedProduct> records, bool hasReachedMax, String? query)
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
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
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
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchOrderedproductInitial value) initial,
    required TResult Function(_FetchOrderedproductLoading value) loading,
    required TResult Function(_FetchOrderedproductSuccess value) success,
    required TResult Function(_FetchOrderedproductFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrderedproductInitial value)? initial,
    TResult? Function(_FetchOrderedproductLoading value)? loading,
    TResult? Function(_FetchOrderedproductSuccess value)? success,
    TResult? Function(_FetchOrderedproductFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderedproductInitial value)? initial,
    TResult Function(_FetchOrderedproductLoading value)? loading,
    TResult Function(_FetchOrderedproductSuccess value)? success,
    TResult Function(_FetchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchOrderedproductLoading implements FetchOrderedproductState {
  const factory _FetchOrderedproductLoading() = _$_FetchOrderedproductLoading;
}

/// @nodoc
abstract class _$$_FetchOrderedproductSuccessCopyWith<$Res> {
  factory _$$_FetchOrderedproductSuccessCopyWith(
          _$_FetchOrderedproductSuccess value,
          $Res Function(_$_FetchOrderedproductSuccess) then) =
      __$$_FetchOrderedproductSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderedProduct> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$_FetchOrderedproductSuccessCopyWithImpl<$Res>
    extends _$FetchOrderedproductStateCopyWithImpl<$Res,
        _$_FetchOrderedproductSuccess>
    implements _$$_FetchOrderedproductSuccessCopyWith<$Res> {
  __$$_FetchOrderedproductSuccessCopyWithImpl(
      _$_FetchOrderedproductSuccess _value,
      $Res Function(_$_FetchOrderedproductSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchOrderedproductSuccess(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<OrderedProduct>,
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

class _$_FetchOrderedproductSuccess implements _FetchOrderedproductSuccess {
  const _$_FetchOrderedproductSuccess(
      {required final List<OrderedProduct> records,
      required this.hasReachedMax,
      this.query})
      : _records = records;

  final List<OrderedProduct> _records;
  @override
  List<OrderedProduct> get records {
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
    return 'FetchOrderedproductState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrderedproductSuccess &&
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
  _$$_FetchOrderedproductSuccessCopyWith<_$_FetchOrderedproductSuccess>
      get copyWith => __$$_FetchOrderedproductSuccessCopyWithImpl<
          _$_FetchOrderedproductSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderedProduct> records, bool hasReachedMax, String? query)
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
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
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
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchOrderedproductInitial value) initial,
    required TResult Function(_FetchOrderedproductLoading value) loading,
    required TResult Function(_FetchOrderedproductSuccess value) success,
    required TResult Function(_FetchOrderedproductFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrderedproductInitial value)? initial,
    TResult? Function(_FetchOrderedproductLoading value)? loading,
    TResult? Function(_FetchOrderedproductSuccess value)? success,
    TResult? Function(_FetchOrderedproductFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderedproductInitial value)? initial,
    TResult Function(_FetchOrderedproductLoading value)? loading,
    TResult Function(_FetchOrderedproductSuccess value)? success,
    TResult Function(_FetchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchOrderedproductSuccess implements FetchOrderedproductState {
  const factory _FetchOrderedproductSuccess(
      {required final List<OrderedProduct> records,
      required final bool hasReachedMax,
      final String? query}) = _$_FetchOrderedproductSuccess;

  List<OrderedProduct> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_FetchOrderedproductSuccessCopyWith<_$_FetchOrderedproductSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchOrderedproductFailureCopyWith<$Res> {
  factory _$$_FetchOrderedproductFailureCopyWith(
          _$_FetchOrderedproductFailure value,
          $Res Function(_$_FetchOrderedproductFailure) then) =
      __$$_FetchOrderedproductFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchOrderedproductFailureCopyWithImpl<$Res>
    extends _$FetchOrderedproductStateCopyWithImpl<$Res,
        _$_FetchOrderedproductFailure>
    implements _$$_FetchOrderedproductFailureCopyWith<$Res> {
  __$$_FetchOrderedproductFailureCopyWithImpl(
      _$_FetchOrderedproductFailure _value,
      $Res Function(_$_FetchOrderedproductFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchOrderedproductFailure(
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

class _$_FetchOrderedproductFailure implements _FetchOrderedproductFailure {
  const _$_FetchOrderedproductFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchOrderedproductState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrderedproductFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchOrderedproductFailureCopyWith<_$_FetchOrderedproductFailure>
      get copyWith => __$$_FetchOrderedproductFailureCopyWithImpl<
          _$_FetchOrderedproductFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderedProduct> records, bool hasReachedMax, String? query)
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
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
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
            List<OrderedProduct> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchOrderedproductInitial value) initial,
    required TResult Function(_FetchOrderedproductLoading value) loading,
    required TResult Function(_FetchOrderedproductSuccess value) success,
    required TResult Function(_FetchOrderedproductFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrderedproductInitial value)? initial,
    TResult? Function(_FetchOrderedproductLoading value)? loading,
    TResult? Function(_FetchOrderedproductSuccess value)? success,
    TResult? Function(_FetchOrderedproductFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderedproductInitial value)? initial,
    TResult Function(_FetchOrderedproductLoading value)? loading,
    TResult Function(_FetchOrderedproductSuccess value)? success,
    TResult Function(_FetchOrderedproductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchOrderedproductFailure implements FetchOrderedproductState {
  const factory _FetchOrderedproductFailure(final Failure failure) =
      _$_FetchOrderedproductFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FetchOrderedproductFailureCopyWith<_$_FetchOrderedproductFailure>
      get copyWith => throw _privateConstructorUsedError;
}

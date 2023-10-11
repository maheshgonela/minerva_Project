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
abstract class _$$fetchInitialOrderedproductImplCopyWith<$Res>
    implements $FetchOrderedproductEventCopyWith<$Res> {
  factory _$$fetchInitialOrderedproductImplCopyWith(
          _$fetchInitialOrderedproductImpl value,
          $Res Function(_$fetchInitialOrderedproductImpl) then) =
      __$$fetchInitialOrderedproductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class __$$fetchInitialOrderedproductImplCopyWithImpl<$Res>
    extends _$FetchOrderedproductEventCopyWithImpl<$Res,
        _$fetchInitialOrderedproductImpl>
    implements _$$fetchInitialOrderedproductImplCopyWith<$Res> {
  __$$fetchInitialOrderedproductImplCopyWithImpl(
      _$fetchInitialOrderedproductImpl _value,
      $Res Function(_$fetchInitialOrderedproductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_$fetchInitialOrderedproductImpl(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$fetchInitialOrderedproductImpl implements _fetchInitialOrderedproduct {
  const _$fetchInitialOrderedproductImpl(this.purchaseOrderId);

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
            other is _$fetchInitialOrderedproductImpl &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchInitialOrderedproductImplCopyWith<_$fetchInitialOrderedproductImpl>
      get copyWith => __$$fetchInitialOrderedproductImplCopyWithImpl<
          _$fetchInitialOrderedproductImpl>(this, _$identity);

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
      _$fetchInitialOrderedproductImpl;

  @override
  String get purchaseOrderId;
  @override
  @JsonKey(ignore: true)
  _$$fetchInitialOrderedproductImplCopyWith<_$fetchInitialOrderedproductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$fetchMoreOrderedproductImplCopyWith<$Res>
    implements $FetchOrderedproductEventCopyWith<$Res> {
  factory _$$fetchMoreOrderedproductImplCopyWith(
          _$fetchMoreOrderedproductImpl value,
          $Res Function(_$fetchMoreOrderedproductImpl) then) =
      __$$fetchMoreOrderedproductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId});
}

/// @nodoc
class __$$fetchMoreOrderedproductImplCopyWithImpl<$Res>
    extends _$FetchOrderedproductEventCopyWithImpl<$Res,
        _$fetchMoreOrderedproductImpl>
    implements _$$fetchMoreOrderedproductImplCopyWith<$Res> {
  __$$fetchMoreOrderedproductImplCopyWithImpl(
      _$fetchMoreOrderedproductImpl _value,
      $Res Function(_$fetchMoreOrderedproductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
  }) {
    return _then(_$fetchMoreOrderedproductImpl(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$fetchMoreOrderedproductImpl implements _fetchMoreOrderedproduct {
  const _$fetchMoreOrderedproductImpl(this.purchaseOrderId);

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
            other is _$fetchMoreOrderedproductImpl &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchMoreOrderedproductImplCopyWith<_$fetchMoreOrderedproductImpl>
      get copyWith => __$$fetchMoreOrderedproductImplCopyWithImpl<
          _$fetchMoreOrderedproductImpl>(this, _$identity);

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
      _$fetchMoreOrderedproductImpl;

  @override
  String get purchaseOrderId;
  @override
  @JsonKey(ignore: true)
  _$$fetchMoreOrderedproductImplCopyWith<_$fetchMoreOrderedproductImpl>
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
abstract class _$$FetchOrderedproductInitialImplCopyWith<$Res> {
  factory _$$FetchOrderedproductInitialImplCopyWith(
          _$FetchOrderedproductInitialImpl value,
          $Res Function(_$FetchOrderedproductInitialImpl) then) =
      __$$FetchOrderedproductInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOrderedproductInitialImplCopyWithImpl<$Res>
    extends _$FetchOrderedproductStateCopyWithImpl<$Res,
        _$FetchOrderedproductInitialImpl>
    implements _$$FetchOrderedproductInitialImplCopyWith<$Res> {
  __$$FetchOrderedproductInitialImplCopyWithImpl(
      _$FetchOrderedproductInitialImpl _value,
      $Res Function(_$FetchOrderedproductInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchOrderedproductInitialImpl implements _FetchOrderedproductInitial {
  const _$FetchOrderedproductInitialImpl();

  @override
  String toString() {
    return 'FetchOrderedproductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOrderedproductInitialImpl);
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
  const factory _FetchOrderedproductInitial() =
      _$FetchOrderedproductInitialImpl;
}

/// @nodoc
abstract class _$$FetchOrderedproductLoadingImplCopyWith<$Res> {
  factory _$$FetchOrderedproductLoadingImplCopyWith(
          _$FetchOrderedproductLoadingImpl value,
          $Res Function(_$FetchOrderedproductLoadingImpl) then) =
      __$$FetchOrderedproductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOrderedproductLoadingImplCopyWithImpl<$Res>
    extends _$FetchOrderedproductStateCopyWithImpl<$Res,
        _$FetchOrderedproductLoadingImpl>
    implements _$$FetchOrderedproductLoadingImplCopyWith<$Res> {
  __$$FetchOrderedproductLoadingImplCopyWithImpl(
      _$FetchOrderedproductLoadingImpl _value,
      $Res Function(_$FetchOrderedproductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchOrderedproductLoadingImpl implements _FetchOrderedproductLoading {
  const _$FetchOrderedproductLoadingImpl();

  @override
  String toString() {
    return 'FetchOrderedproductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOrderedproductLoadingImpl);
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
  const factory _FetchOrderedproductLoading() =
      _$FetchOrderedproductLoadingImpl;
}

/// @nodoc
abstract class _$$FetchOrderedproductSuccessImplCopyWith<$Res> {
  factory _$$FetchOrderedproductSuccessImplCopyWith(
          _$FetchOrderedproductSuccessImpl value,
          $Res Function(_$FetchOrderedproductSuccessImpl) then) =
      __$$FetchOrderedproductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderedProduct> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$FetchOrderedproductSuccessImplCopyWithImpl<$Res>
    extends _$FetchOrderedproductStateCopyWithImpl<$Res,
        _$FetchOrderedproductSuccessImpl>
    implements _$$FetchOrderedproductSuccessImplCopyWith<$Res> {
  __$$FetchOrderedproductSuccessImplCopyWithImpl(
      _$FetchOrderedproductSuccessImpl _value,
      $Res Function(_$FetchOrderedproductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$FetchOrderedproductSuccessImpl(
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

class _$FetchOrderedproductSuccessImpl implements _FetchOrderedproductSuccess {
  const _$FetchOrderedproductSuccessImpl(
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
            other is _$FetchOrderedproductSuccessImpl &&
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
  _$$FetchOrderedproductSuccessImplCopyWith<_$FetchOrderedproductSuccessImpl>
      get copyWith => __$$FetchOrderedproductSuccessImplCopyWithImpl<
          _$FetchOrderedproductSuccessImpl>(this, _$identity);

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
      final String? query}) = _$FetchOrderedproductSuccessImpl;

  List<OrderedProduct> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$FetchOrderedproductSuccessImplCopyWith<_$FetchOrderedproductSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchOrderedproductFailureImplCopyWith<$Res> {
  factory _$$FetchOrderedproductFailureImplCopyWith(
          _$FetchOrderedproductFailureImpl value,
          $Res Function(_$FetchOrderedproductFailureImpl) then) =
      __$$FetchOrderedproductFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FetchOrderedproductFailureImplCopyWithImpl<$Res>
    extends _$FetchOrderedproductStateCopyWithImpl<$Res,
        _$FetchOrderedproductFailureImpl>
    implements _$$FetchOrderedproductFailureImplCopyWith<$Res> {
  __$$FetchOrderedproductFailureImplCopyWithImpl(
      _$FetchOrderedproductFailureImpl _value,
      $Res Function(_$FetchOrderedproductFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FetchOrderedproductFailureImpl(
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

class _$FetchOrderedproductFailureImpl implements _FetchOrderedproductFailure {
  const _$FetchOrderedproductFailureImpl(this.failure);

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
            other is _$FetchOrderedproductFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOrderedproductFailureImplCopyWith<_$FetchOrderedproductFailureImpl>
      get copyWith => __$$FetchOrderedproductFailureImplCopyWithImpl<
          _$FetchOrderedproductFailureImpl>(this, _$identity);

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
      _$FetchOrderedproductFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FetchOrderedproductFailureImplCopyWith<_$FetchOrderedproductFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

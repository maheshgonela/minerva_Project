// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchShopEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialShop,
    required TResult Function(String? query) fetchMoreShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialShop,
    TResult? Function(String? query)? fetchMoreShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialShop,
    TResult Function(String? query)? fetchMoreShop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialShop value) fetchInitialShop,
    required TResult Function(_FetchMoreShop value) fetchMoreShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialShop value)? fetchInitialShop,
    TResult? Function(_FetchMoreShop value)? fetchMoreShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialShop value)? fetchInitialShop,
    TResult Function(_FetchMoreShop value)? fetchMoreShop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchShopEventCopyWith<FetchShopEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchShopEventCopyWith<$Res> {
  factory $FetchShopEventCopyWith(
          FetchShopEvent value, $Res Function(FetchShopEvent) then) =
      _$FetchShopEventCopyWithImpl<$Res, FetchShopEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$FetchShopEventCopyWithImpl<$Res, $Val extends FetchShopEvent>
    implements $FetchShopEventCopyWith<$Res> {
  _$FetchShopEventCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchInitialShopImplCopyWith<$Res>
    implements $FetchShopEventCopyWith<$Res> {
  factory _$$FetchInitialShopImplCopyWith(_$FetchInitialShopImpl value,
          $Res Function(_$FetchInitialShopImpl) then) =
      __$$FetchInitialShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchInitialShopImplCopyWithImpl<$Res>
    extends _$FetchShopEventCopyWithImpl<$Res, _$FetchInitialShopImpl>
    implements _$$FetchInitialShopImplCopyWith<$Res> {
  __$$FetchInitialShopImplCopyWithImpl(_$FetchInitialShopImpl _value,
      $Res Function(_$FetchInitialShopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchInitialShopImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchInitialShopImpl implements _FetchInitialShop {
  const _$FetchInitialShopImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchShopEvent.fetchInitialShop(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchInitialShopImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchInitialShopImplCopyWith<_$FetchInitialShopImpl> get copyWith =>
      __$$FetchInitialShopImplCopyWithImpl<_$FetchInitialShopImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialShop,
    required TResult Function(String? query) fetchMoreShop,
  }) {
    return fetchInitialShop(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialShop,
    TResult? Function(String? query)? fetchMoreShop,
  }) {
    return fetchInitialShop?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialShop,
    TResult Function(String? query)? fetchMoreShop,
    required TResult orElse(),
  }) {
    if (fetchInitialShop != null) {
      return fetchInitialShop(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialShop value) fetchInitialShop,
    required TResult Function(_FetchMoreShop value) fetchMoreShop,
  }) {
    return fetchInitialShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialShop value)? fetchInitialShop,
    TResult? Function(_FetchMoreShop value)? fetchMoreShop,
  }) {
    return fetchInitialShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialShop value)? fetchInitialShop,
    TResult Function(_FetchMoreShop value)? fetchMoreShop,
    required TResult orElse(),
  }) {
    if (fetchInitialShop != null) {
      return fetchInitialShop(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialShop implements FetchShopEvent {
  const factory _FetchInitialShop({final String? query}) =
      _$FetchInitialShopImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchInitialShopImplCopyWith<_$FetchInitialShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreShopImplCopyWith<$Res>
    implements $FetchShopEventCopyWith<$Res> {
  factory _$$FetchMoreShopImplCopyWith(
          _$FetchMoreShopImpl value, $Res Function(_$FetchMoreShopImpl) then) =
      __$$FetchMoreShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchMoreShopImplCopyWithImpl<$Res>
    extends _$FetchShopEventCopyWithImpl<$Res, _$FetchMoreShopImpl>
    implements _$$FetchMoreShopImplCopyWith<$Res> {
  __$$FetchMoreShopImplCopyWithImpl(
      _$FetchMoreShopImpl _value, $Res Function(_$FetchMoreShopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchMoreShopImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchMoreShopImpl implements _FetchMoreShop {
  const _$FetchMoreShopImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchShopEvent.fetchMoreShop(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoreShopImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreShopImplCopyWith<_$FetchMoreShopImpl> get copyWith =>
      __$$FetchMoreShopImplCopyWithImpl<_$FetchMoreShopImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialShop,
    required TResult Function(String? query) fetchMoreShop,
  }) {
    return fetchMoreShop(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialShop,
    TResult? Function(String? query)? fetchMoreShop,
  }) {
    return fetchMoreShop?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialShop,
    TResult Function(String? query)? fetchMoreShop,
    required TResult orElse(),
  }) {
    if (fetchMoreShop != null) {
      return fetchMoreShop(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialShop value) fetchInitialShop,
    required TResult Function(_FetchMoreShop value) fetchMoreShop,
  }) {
    return fetchMoreShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialShop value)? fetchInitialShop,
    TResult? Function(_FetchMoreShop value)? fetchMoreShop,
  }) {
    return fetchMoreShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialShop value)? fetchInitialShop,
    TResult Function(_FetchMoreShop value)? fetchMoreShop,
    required TResult orElse(),
  }) {
    if (fetchMoreShop != null) {
      return fetchMoreShop(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreShop implements FetchShopEvent {
  const factory _FetchMoreShop({final String? query}) = _$FetchMoreShopImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoreShopImplCopyWith<_$FetchMoreShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchShopState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<IdName> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<IdName> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<IdName> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchShopInitial value) initial,
    required TResult Function(_FetchShopLoading value) loading,
    required TResult Function(_FetchShopSuccess value) success,
    required TResult Function(_FetchShopFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShopInitial value)? initial,
    TResult? Function(_FetchShopLoading value)? loading,
    TResult? Function(_FetchShopSuccess value)? success,
    TResult? Function(_FetchShopFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShopInitial value)? initial,
    TResult Function(_FetchShopLoading value)? loading,
    TResult Function(_FetchShopSuccess value)? success,
    TResult Function(_FetchShopFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchShopStateCopyWith<$Res> {
  factory $FetchShopStateCopyWith(
          FetchShopState value, $Res Function(FetchShopState) then) =
      _$FetchShopStateCopyWithImpl<$Res, FetchShopState>;
}

/// @nodoc
class _$FetchShopStateCopyWithImpl<$Res, $Val extends FetchShopState>
    implements $FetchShopStateCopyWith<$Res> {
  _$FetchShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchShopInitialImplCopyWith<$Res> {
  factory _$$FetchShopInitialImplCopyWith(_$FetchShopInitialImpl value,
          $Res Function(_$FetchShopInitialImpl) then) =
      __$$FetchShopInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchShopInitialImplCopyWithImpl<$Res>
    extends _$FetchShopStateCopyWithImpl<$Res, _$FetchShopInitialImpl>
    implements _$$FetchShopInitialImplCopyWith<$Res> {
  __$$FetchShopInitialImplCopyWithImpl(_$FetchShopInitialImpl _value,
      $Res Function(_$FetchShopInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchShopInitialImpl implements _FetchShopInitial {
  const _$FetchShopInitialImpl();

  @override
  String toString() {
    return 'FetchShopState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchShopInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<IdName> records, bool hasReachedMax, String? query)
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
    TResult? Function(List<IdName> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<IdName> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchShopInitial value) initial,
    required TResult Function(_FetchShopLoading value) loading,
    required TResult Function(_FetchShopSuccess value) success,
    required TResult Function(_FetchShopFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShopInitial value)? initial,
    TResult? Function(_FetchShopLoading value)? loading,
    TResult? Function(_FetchShopSuccess value)? success,
    TResult? Function(_FetchShopFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShopInitial value)? initial,
    TResult Function(_FetchShopLoading value)? loading,
    TResult Function(_FetchShopSuccess value)? success,
    TResult Function(_FetchShopFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchShopInitial implements FetchShopState {
  const factory _FetchShopInitial() = _$FetchShopInitialImpl;
}

/// @nodoc
abstract class _$$FetchShopLoadingImplCopyWith<$Res> {
  factory _$$FetchShopLoadingImplCopyWith(_$FetchShopLoadingImpl value,
          $Res Function(_$FetchShopLoadingImpl) then) =
      __$$FetchShopLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchShopLoadingImplCopyWithImpl<$Res>
    extends _$FetchShopStateCopyWithImpl<$Res, _$FetchShopLoadingImpl>
    implements _$$FetchShopLoadingImplCopyWith<$Res> {
  __$$FetchShopLoadingImplCopyWithImpl(_$FetchShopLoadingImpl _value,
      $Res Function(_$FetchShopLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchShopLoadingImpl implements _FetchShopLoading {
  const _$FetchShopLoadingImpl();

  @override
  String toString() {
    return 'FetchShopState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchShopLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<IdName> records, bool hasReachedMax, String? query)
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
    TResult? Function(List<IdName> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<IdName> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchShopInitial value) initial,
    required TResult Function(_FetchShopLoading value) loading,
    required TResult Function(_FetchShopSuccess value) success,
    required TResult Function(_FetchShopFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShopInitial value)? initial,
    TResult? Function(_FetchShopLoading value)? loading,
    TResult? Function(_FetchShopSuccess value)? success,
    TResult? Function(_FetchShopFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShopInitial value)? initial,
    TResult Function(_FetchShopLoading value)? loading,
    TResult Function(_FetchShopSuccess value)? success,
    TResult Function(_FetchShopFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchShopLoading implements FetchShopState {
  const factory _FetchShopLoading() = _$FetchShopLoadingImpl;
}

/// @nodoc
abstract class _$$FetchShopSuccessImplCopyWith<$Res> {
  factory _$$FetchShopSuccessImplCopyWith(_$FetchShopSuccessImpl value,
          $Res Function(_$FetchShopSuccessImpl) then) =
      __$$FetchShopSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<IdName> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$FetchShopSuccessImplCopyWithImpl<$Res>
    extends _$FetchShopStateCopyWithImpl<$Res, _$FetchShopSuccessImpl>
    implements _$$FetchShopSuccessImplCopyWith<$Res> {
  __$$FetchShopSuccessImplCopyWithImpl(_$FetchShopSuccessImpl _value,
      $Res Function(_$FetchShopSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$FetchShopSuccessImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<IdName>,
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

class _$FetchShopSuccessImpl implements _FetchShopSuccess {
  const _$FetchShopSuccessImpl(
      {required final List<IdName> records,
      required this.hasReachedMax,
      this.query})
      : _records = records;

  final List<IdName> _records;
  @override
  List<IdName> get records {
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
    return 'FetchShopState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchShopSuccessImpl &&
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
  _$$FetchShopSuccessImplCopyWith<_$FetchShopSuccessImpl> get copyWith =>
      __$$FetchShopSuccessImplCopyWithImpl<_$FetchShopSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<IdName> records, bool hasReachedMax, String? query)
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
    TResult? Function(List<IdName> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<IdName> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchShopInitial value) initial,
    required TResult Function(_FetchShopLoading value) loading,
    required TResult Function(_FetchShopSuccess value) success,
    required TResult Function(_FetchShopFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShopInitial value)? initial,
    TResult? Function(_FetchShopLoading value)? loading,
    TResult? Function(_FetchShopSuccess value)? success,
    TResult? Function(_FetchShopFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShopInitial value)? initial,
    TResult Function(_FetchShopLoading value)? loading,
    TResult Function(_FetchShopSuccess value)? success,
    TResult Function(_FetchShopFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchShopSuccess implements FetchShopState {
  const factory _FetchShopSuccess(
      {required final List<IdName> records,
      required final bool hasReachedMax,
      final String? query}) = _$FetchShopSuccessImpl;

  List<IdName> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$FetchShopSuccessImplCopyWith<_$FetchShopSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchShopFailureImplCopyWith<$Res> {
  factory _$$FetchShopFailureImplCopyWith(_$FetchShopFailureImpl value,
          $Res Function(_$FetchShopFailureImpl) then) =
      __$$FetchShopFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FetchShopFailureImplCopyWithImpl<$Res>
    extends _$FetchShopStateCopyWithImpl<$Res, _$FetchShopFailureImpl>
    implements _$$FetchShopFailureImplCopyWith<$Res> {
  __$$FetchShopFailureImplCopyWithImpl(_$FetchShopFailureImpl _value,
      $Res Function(_$FetchShopFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FetchShopFailureImpl(
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

class _$FetchShopFailureImpl implements _FetchShopFailure {
  const _$FetchShopFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchShopState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchShopFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchShopFailureImplCopyWith<_$FetchShopFailureImpl> get copyWith =>
      __$$FetchShopFailureImplCopyWithImpl<_$FetchShopFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<IdName> records, bool hasReachedMax, String? query)
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
    TResult? Function(List<IdName> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<IdName> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchShopInitial value) initial,
    required TResult Function(_FetchShopLoading value) loading,
    required TResult Function(_FetchShopSuccess value) success,
    required TResult Function(_FetchShopFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShopInitial value)? initial,
    TResult? Function(_FetchShopLoading value)? loading,
    TResult? Function(_FetchShopSuccess value)? success,
    TResult? Function(_FetchShopFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShopInitial value)? initial,
    TResult Function(_FetchShopLoading value)? loading,
    TResult Function(_FetchShopSuccess value)? success,
    TResult Function(_FetchShopFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchShopFailure implements FetchShopState {
  const factory _FetchShopFailure(final Failure failure) =
      _$FetchShopFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FetchShopFailureImplCopyWith<_$FetchShopFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

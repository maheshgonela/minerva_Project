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
abstract class _$$_FetchInitialShopCopyWith<$Res>
    implements $FetchShopEventCopyWith<$Res> {
  factory _$$_FetchInitialShopCopyWith(
          _$_FetchInitialShop value, $Res Function(_$_FetchInitialShop) then) =
      __$$_FetchInitialShopCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_FetchInitialShopCopyWithImpl<$Res>
    extends _$FetchShopEventCopyWithImpl<$Res, _$_FetchInitialShop>
    implements _$$_FetchInitialShopCopyWith<$Res> {
  __$$_FetchInitialShopCopyWithImpl(
      _$_FetchInitialShop _value, $Res Function(_$_FetchInitialShop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_FetchInitialShop(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchInitialShop implements _FetchInitialShop {
  const _$_FetchInitialShop({this.query});

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
            other is _$_FetchInitialShop &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchInitialShopCopyWith<_$_FetchInitialShop> get copyWith =>
      __$$_FetchInitialShopCopyWithImpl<_$_FetchInitialShop>(this, _$identity);

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
  const factory _FetchInitialShop({final String? query}) = _$_FetchInitialShop;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchInitialShopCopyWith<_$_FetchInitialShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchMoreShopCopyWith<$Res>
    implements $FetchShopEventCopyWith<$Res> {
  factory _$$_FetchMoreShopCopyWith(
          _$_FetchMoreShop value, $Res Function(_$_FetchMoreShop) then) =
      __$$_FetchMoreShopCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_FetchMoreShopCopyWithImpl<$Res>
    extends _$FetchShopEventCopyWithImpl<$Res, _$_FetchMoreShop>
    implements _$$_FetchMoreShopCopyWith<$Res> {
  __$$_FetchMoreShopCopyWithImpl(
      _$_FetchMoreShop _value, $Res Function(_$_FetchMoreShop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_FetchMoreShop(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchMoreShop implements _FetchMoreShop {
  const _$_FetchMoreShop({this.query});

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
            other is _$_FetchMoreShop &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchMoreShopCopyWith<_$_FetchMoreShop> get copyWith =>
      __$$_FetchMoreShopCopyWithImpl<_$_FetchMoreShop>(this, _$identity);

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
  const factory _FetchMoreShop({final String? query}) = _$_FetchMoreShop;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchMoreShopCopyWith<_$_FetchMoreShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchShopState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shop> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Shop> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Shop> records, bool hasReachedMax, String? query)?
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
abstract class _$$_FetchShopInitialCopyWith<$Res> {
  factory _$$_FetchShopInitialCopyWith(
          _$_FetchShopInitial value, $Res Function(_$_FetchShopInitial) then) =
      __$$_FetchShopInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchShopInitialCopyWithImpl<$Res>
    extends _$FetchShopStateCopyWithImpl<$Res, _$_FetchShopInitial>
    implements _$$_FetchShopInitialCopyWith<$Res> {
  __$$_FetchShopInitialCopyWithImpl(
      _$_FetchShopInitial _value, $Res Function(_$_FetchShopInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchShopInitial implements _FetchShopInitial {
  const _$_FetchShopInitial();

  @override
  String toString() {
    return 'FetchShopState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchShopInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shop> records, bool hasReachedMax, String? query)
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
    TResult? Function(List<Shop> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<Shop> records, bool hasReachedMax, String? query)?
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
  const factory _FetchShopInitial() = _$_FetchShopInitial;
}

/// @nodoc
abstract class _$$_FetchShopLoadingCopyWith<$Res> {
  factory _$$_FetchShopLoadingCopyWith(
          _$_FetchShopLoading value, $Res Function(_$_FetchShopLoading) then) =
      __$$_FetchShopLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchShopLoadingCopyWithImpl<$Res>
    extends _$FetchShopStateCopyWithImpl<$Res, _$_FetchShopLoading>
    implements _$$_FetchShopLoadingCopyWith<$Res> {
  __$$_FetchShopLoadingCopyWithImpl(
      _$_FetchShopLoading _value, $Res Function(_$_FetchShopLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchShopLoading implements _FetchShopLoading {
  const _$_FetchShopLoading();

  @override
  String toString() {
    return 'FetchShopState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchShopLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shop> records, bool hasReachedMax, String? query)
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
    TResult? Function(List<Shop> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<Shop> records, bool hasReachedMax, String? query)?
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
  const factory _FetchShopLoading() = _$_FetchShopLoading;
}

/// @nodoc
abstract class _$$_FetchShopSuccessCopyWith<$Res> {
  factory _$$_FetchShopSuccessCopyWith(
          _$_FetchShopSuccess value, $Res Function(_$_FetchShopSuccess) then) =
      __$$_FetchShopSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Shop> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$_FetchShopSuccessCopyWithImpl<$Res>
    extends _$FetchShopStateCopyWithImpl<$Res, _$_FetchShopSuccess>
    implements _$$_FetchShopSuccessCopyWith<$Res> {
  __$$_FetchShopSuccessCopyWithImpl(
      _$_FetchShopSuccess _value, $Res Function(_$_FetchShopSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchShopSuccess(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
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

class _$_FetchShopSuccess implements _FetchShopSuccess {
  const _$_FetchShopSuccess(
      {required final List<Shop> records,
      required this.hasReachedMax,
      this.query})
      : _records = records;

  final List<Shop> _records;
  @override
  List<Shop> get records {
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
            other is _$_FetchShopSuccess &&
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
  _$$_FetchShopSuccessCopyWith<_$_FetchShopSuccess> get copyWith =>
      __$$_FetchShopSuccessCopyWithImpl<_$_FetchShopSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shop> records, bool hasReachedMax, String? query)
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
    TResult? Function(List<Shop> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<Shop> records, bool hasReachedMax, String? query)?
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
      {required final List<Shop> records,
      required final bool hasReachedMax,
      final String? query}) = _$_FetchShopSuccess;

  List<Shop> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_FetchShopSuccessCopyWith<_$_FetchShopSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchShopFailureCopyWith<$Res> {
  factory _$$_FetchShopFailureCopyWith(
          _$_FetchShopFailure value, $Res Function(_$_FetchShopFailure) then) =
      __$$_FetchShopFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchShopFailureCopyWithImpl<$Res>
    extends _$FetchShopStateCopyWithImpl<$Res, _$_FetchShopFailure>
    implements _$$_FetchShopFailureCopyWith<$Res> {
  __$$_FetchShopFailureCopyWithImpl(
      _$_FetchShopFailure _value, $Res Function(_$_FetchShopFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchShopFailure(
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

class _$_FetchShopFailure implements _FetchShopFailure {
  const _$_FetchShopFailure(this.failure);

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
            other is _$_FetchShopFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchShopFailureCopyWith<_$_FetchShopFailure> get copyWith =>
      __$$_FetchShopFailureCopyWithImpl<_$_FetchShopFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shop> records, bool hasReachedMax, String? query)
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
    TResult? Function(List<Shop> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<Shop> records, bool hasReachedMax, String? query)?
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
  const factory _FetchShopFailure(final Failure failure) = _$_FetchShopFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FetchShopFailureCopyWith<_$_FetchShopFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

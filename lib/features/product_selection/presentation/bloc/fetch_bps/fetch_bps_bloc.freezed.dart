// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_bps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchBusinessPartnerEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialBusinessPartner,
    required TResult Function(String? query) fetchMoreBusinessPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialBusinessPartner,
    TResult? Function(String? query)? fetchMoreBusinessPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialBusinessPartner,
    TResult Function(String? query)? fetchMoreBusinessPartner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialBusinessPartner value)
        fetchInitialBusinessPartner,
    required TResult Function(_FetchMoreBusinessPartner value)
        fetchMoreBusinessPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialBusinessPartner value)?
        fetchInitialBusinessPartner,
    TResult? Function(_FetchMoreBusinessPartner value)?
        fetchMoreBusinessPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialBusinessPartner value)?
        fetchInitialBusinessPartner,
    TResult Function(_FetchMoreBusinessPartner value)? fetchMoreBusinessPartner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchBusinessPartnerEventCopyWith<FetchBusinessPartnerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchBusinessPartnerEventCopyWith<$Res> {
  factory $FetchBusinessPartnerEventCopyWith(FetchBusinessPartnerEvent value,
          $Res Function(FetchBusinessPartnerEvent) then) =
      _$FetchBusinessPartnerEventCopyWithImpl<$Res, FetchBusinessPartnerEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$FetchBusinessPartnerEventCopyWithImpl<$Res,
        $Val extends FetchBusinessPartnerEvent>
    implements $FetchBusinessPartnerEventCopyWith<$Res> {
  _$FetchBusinessPartnerEventCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchInitialBusinessPartnerImplCopyWith<$Res>
    implements $FetchBusinessPartnerEventCopyWith<$Res> {
  factory _$$FetchInitialBusinessPartnerImplCopyWith(
          _$FetchInitialBusinessPartnerImpl value,
          $Res Function(_$FetchInitialBusinessPartnerImpl) then) =
      __$$FetchInitialBusinessPartnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchInitialBusinessPartnerImplCopyWithImpl<$Res>
    extends _$FetchBusinessPartnerEventCopyWithImpl<$Res,
        _$FetchInitialBusinessPartnerImpl>
    implements _$$FetchInitialBusinessPartnerImplCopyWith<$Res> {
  __$$FetchInitialBusinessPartnerImplCopyWithImpl(
      _$FetchInitialBusinessPartnerImpl _value,
      $Res Function(_$FetchInitialBusinessPartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchInitialBusinessPartnerImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchInitialBusinessPartnerImpl
    implements _FetchInitialBusinessPartner {
  const _$FetchInitialBusinessPartnerImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchBusinessPartnerEvent.fetchInitialBusinessPartner(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchInitialBusinessPartnerImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchInitialBusinessPartnerImplCopyWith<_$FetchInitialBusinessPartnerImpl>
      get copyWith => __$$FetchInitialBusinessPartnerImplCopyWithImpl<
          _$FetchInitialBusinessPartnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialBusinessPartner,
    required TResult Function(String? query) fetchMoreBusinessPartner,
  }) {
    return fetchInitialBusinessPartner(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialBusinessPartner,
    TResult? Function(String? query)? fetchMoreBusinessPartner,
  }) {
    return fetchInitialBusinessPartner?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialBusinessPartner,
    TResult Function(String? query)? fetchMoreBusinessPartner,
    required TResult orElse(),
  }) {
    if (fetchInitialBusinessPartner != null) {
      return fetchInitialBusinessPartner(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialBusinessPartner value)
        fetchInitialBusinessPartner,
    required TResult Function(_FetchMoreBusinessPartner value)
        fetchMoreBusinessPartner,
  }) {
    return fetchInitialBusinessPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialBusinessPartner value)?
        fetchInitialBusinessPartner,
    TResult? Function(_FetchMoreBusinessPartner value)?
        fetchMoreBusinessPartner,
  }) {
    return fetchInitialBusinessPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialBusinessPartner value)?
        fetchInitialBusinessPartner,
    TResult Function(_FetchMoreBusinessPartner value)? fetchMoreBusinessPartner,
    required TResult orElse(),
  }) {
    if (fetchInitialBusinessPartner != null) {
      return fetchInitialBusinessPartner(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialBusinessPartner
    implements FetchBusinessPartnerEvent {
  const factory _FetchInitialBusinessPartner({final String? query}) =
      _$FetchInitialBusinessPartnerImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchInitialBusinessPartnerImplCopyWith<_$FetchInitialBusinessPartnerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreBusinessPartnerImplCopyWith<$Res>
    implements $FetchBusinessPartnerEventCopyWith<$Res> {
  factory _$$FetchMoreBusinessPartnerImplCopyWith(
          _$FetchMoreBusinessPartnerImpl value,
          $Res Function(_$FetchMoreBusinessPartnerImpl) then) =
      __$$FetchMoreBusinessPartnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchMoreBusinessPartnerImplCopyWithImpl<$Res>
    extends _$FetchBusinessPartnerEventCopyWithImpl<$Res,
        _$FetchMoreBusinessPartnerImpl>
    implements _$$FetchMoreBusinessPartnerImplCopyWith<$Res> {
  __$$FetchMoreBusinessPartnerImplCopyWithImpl(
      _$FetchMoreBusinessPartnerImpl _value,
      $Res Function(_$FetchMoreBusinessPartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchMoreBusinessPartnerImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchMoreBusinessPartnerImpl implements _FetchMoreBusinessPartner {
  const _$FetchMoreBusinessPartnerImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchBusinessPartnerEvent.fetchMoreBusinessPartner(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoreBusinessPartnerImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreBusinessPartnerImplCopyWith<_$FetchMoreBusinessPartnerImpl>
      get copyWith => __$$FetchMoreBusinessPartnerImplCopyWithImpl<
          _$FetchMoreBusinessPartnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialBusinessPartner,
    required TResult Function(String? query) fetchMoreBusinessPartner,
  }) {
    return fetchMoreBusinessPartner(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialBusinessPartner,
    TResult? Function(String? query)? fetchMoreBusinessPartner,
  }) {
    return fetchMoreBusinessPartner?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialBusinessPartner,
    TResult Function(String? query)? fetchMoreBusinessPartner,
    required TResult orElse(),
  }) {
    if (fetchMoreBusinessPartner != null) {
      return fetchMoreBusinessPartner(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialBusinessPartner value)
        fetchInitialBusinessPartner,
    required TResult Function(_FetchMoreBusinessPartner value)
        fetchMoreBusinessPartner,
  }) {
    return fetchMoreBusinessPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialBusinessPartner value)?
        fetchInitialBusinessPartner,
    TResult? Function(_FetchMoreBusinessPartner value)?
        fetchMoreBusinessPartner,
  }) {
    return fetchMoreBusinessPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialBusinessPartner value)?
        fetchInitialBusinessPartner,
    TResult Function(_FetchMoreBusinessPartner value)? fetchMoreBusinessPartner,
    required TResult orElse(),
  }) {
    if (fetchMoreBusinessPartner != null) {
      return fetchMoreBusinessPartner(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreBusinessPartner implements FetchBusinessPartnerEvent {
  const factory _FetchMoreBusinessPartner({final String? query}) =
      _$FetchMoreBusinessPartnerImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoreBusinessPartnerImplCopyWith<_$FetchMoreBusinessPartnerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchBusinessPartnerState {
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
    required TResult Function(_FetchBusinessPartnerInitial value) initial,
    required TResult Function(_FetchBusinessPartnerLoading value) loading,
    required TResult Function(_FetchBusinessPartnerSuccess value) success,
    required TResult Function(_FetchBusinessPartnerFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBusinessPartnerInitial value)? initial,
    TResult? Function(_FetchBusinessPartnerLoading value)? loading,
    TResult? Function(_FetchBusinessPartnerSuccess value)? success,
    TResult? Function(_FetchBusinessPartnerFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBusinessPartnerInitial value)? initial,
    TResult Function(_FetchBusinessPartnerLoading value)? loading,
    TResult Function(_FetchBusinessPartnerSuccess value)? success,
    TResult Function(_FetchBusinessPartnerFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchBusinessPartnerStateCopyWith<$Res> {
  factory $FetchBusinessPartnerStateCopyWith(FetchBusinessPartnerState value,
          $Res Function(FetchBusinessPartnerState) then) =
      _$FetchBusinessPartnerStateCopyWithImpl<$Res, FetchBusinessPartnerState>;
}

/// @nodoc
class _$FetchBusinessPartnerStateCopyWithImpl<$Res,
        $Val extends FetchBusinessPartnerState>
    implements $FetchBusinessPartnerStateCopyWith<$Res> {
  _$FetchBusinessPartnerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchBusinessPartnerInitialImplCopyWith<$Res> {
  factory _$$FetchBusinessPartnerInitialImplCopyWith(
          _$FetchBusinessPartnerInitialImpl value,
          $Res Function(_$FetchBusinessPartnerInitialImpl) then) =
      __$$FetchBusinessPartnerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBusinessPartnerInitialImplCopyWithImpl<$Res>
    extends _$FetchBusinessPartnerStateCopyWithImpl<$Res,
        _$FetchBusinessPartnerInitialImpl>
    implements _$$FetchBusinessPartnerInitialImplCopyWith<$Res> {
  __$$FetchBusinessPartnerInitialImplCopyWithImpl(
      _$FetchBusinessPartnerInitialImpl _value,
      $Res Function(_$FetchBusinessPartnerInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBusinessPartnerInitialImpl
    implements _FetchBusinessPartnerInitial {
  const _$FetchBusinessPartnerInitialImpl();

  @override
  String toString() {
    return 'FetchBusinessPartnerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBusinessPartnerInitialImpl);
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
    required TResult Function(_FetchBusinessPartnerInitial value) initial,
    required TResult Function(_FetchBusinessPartnerLoading value) loading,
    required TResult Function(_FetchBusinessPartnerSuccess value) success,
    required TResult Function(_FetchBusinessPartnerFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBusinessPartnerInitial value)? initial,
    TResult? Function(_FetchBusinessPartnerLoading value)? loading,
    TResult? Function(_FetchBusinessPartnerSuccess value)? success,
    TResult? Function(_FetchBusinessPartnerFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBusinessPartnerInitial value)? initial,
    TResult Function(_FetchBusinessPartnerLoading value)? loading,
    TResult Function(_FetchBusinessPartnerSuccess value)? success,
    TResult Function(_FetchBusinessPartnerFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchBusinessPartnerInitial
    implements FetchBusinessPartnerState {
  const factory _FetchBusinessPartnerInitial() =
      _$FetchBusinessPartnerInitialImpl;
}

/// @nodoc
abstract class _$$FetchBusinessPartnerLoadingImplCopyWith<$Res> {
  factory _$$FetchBusinessPartnerLoadingImplCopyWith(
          _$FetchBusinessPartnerLoadingImpl value,
          $Res Function(_$FetchBusinessPartnerLoadingImpl) then) =
      __$$FetchBusinessPartnerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBusinessPartnerLoadingImplCopyWithImpl<$Res>
    extends _$FetchBusinessPartnerStateCopyWithImpl<$Res,
        _$FetchBusinessPartnerLoadingImpl>
    implements _$$FetchBusinessPartnerLoadingImplCopyWith<$Res> {
  __$$FetchBusinessPartnerLoadingImplCopyWithImpl(
      _$FetchBusinessPartnerLoadingImpl _value,
      $Res Function(_$FetchBusinessPartnerLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBusinessPartnerLoadingImpl
    implements _FetchBusinessPartnerLoading {
  const _$FetchBusinessPartnerLoadingImpl();

  @override
  String toString() {
    return 'FetchBusinessPartnerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBusinessPartnerLoadingImpl);
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
    required TResult Function(_FetchBusinessPartnerInitial value) initial,
    required TResult Function(_FetchBusinessPartnerLoading value) loading,
    required TResult Function(_FetchBusinessPartnerSuccess value) success,
    required TResult Function(_FetchBusinessPartnerFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBusinessPartnerInitial value)? initial,
    TResult? Function(_FetchBusinessPartnerLoading value)? loading,
    TResult? Function(_FetchBusinessPartnerSuccess value)? success,
    TResult? Function(_FetchBusinessPartnerFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBusinessPartnerInitial value)? initial,
    TResult Function(_FetchBusinessPartnerLoading value)? loading,
    TResult Function(_FetchBusinessPartnerSuccess value)? success,
    TResult Function(_FetchBusinessPartnerFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchBusinessPartnerLoading
    implements FetchBusinessPartnerState {
  const factory _FetchBusinessPartnerLoading() =
      _$FetchBusinessPartnerLoadingImpl;
}

/// @nodoc
abstract class _$$FetchBusinessPartnerSuccessImplCopyWith<$Res> {
  factory _$$FetchBusinessPartnerSuccessImplCopyWith(
          _$FetchBusinessPartnerSuccessImpl value,
          $Res Function(_$FetchBusinessPartnerSuccessImpl) then) =
      __$$FetchBusinessPartnerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<IdName> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$FetchBusinessPartnerSuccessImplCopyWithImpl<$Res>
    extends _$FetchBusinessPartnerStateCopyWithImpl<$Res,
        _$FetchBusinessPartnerSuccessImpl>
    implements _$$FetchBusinessPartnerSuccessImplCopyWith<$Res> {
  __$$FetchBusinessPartnerSuccessImplCopyWithImpl(
      _$FetchBusinessPartnerSuccessImpl _value,
      $Res Function(_$FetchBusinessPartnerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$FetchBusinessPartnerSuccessImpl(
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

class _$FetchBusinessPartnerSuccessImpl
    implements _FetchBusinessPartnerSuccess {
  const _$FetchBusinessPartnerSuccessImpl(
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
    return 'FetchBusinessPartnerState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBusinessPartnerSuccessImpl &&
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
  _$$FetchBusinessPartnerSuccessImplCopyWith<_$FetchBusinessPartnerSuccessImpl>
      get copyWith => __$$FetchBusinessPartnerSuccessImplCopyWithImpl<
          _$FetchBusinessPartnerSuccessImpl>(this, _$identity);

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
    required TResult Function(_FetchBusinessPartnerInitial value) initial,
    required TResult Function(_FetchBusinessPartnerLoading value) loading,
    required TResult Function(_FetchBusinessPartnerSuccess value) success,
    required TResult Function(_FetchBusinessPartnerFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBusinessPartnerInitial value)? initial,
    TResult? Function(_FetchBusinessPartnerLoading value)? loading,
    TResult? Function(_FetchBusinessPartnerSuccess value)? success,
    TResult? Function(_FetchBusinessPartnerFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBusinessPartnerInitial value)? initial,
    TResult Function(_FetchBusinessPartnerLoading value)? loading,
    TResult Function(_FetchBusinessPartnerSuccess value)? success,
    TResult Function(_FetchBusinessPartnerFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchBusinessPartnerSuccess
    implements FetchBusinessPartnerState {
  const factory _FetchBusinessPartnerSuccess(
      {required final List<IdName> records,
      required final bool hasReachedMax,
      final String? query}) = _$FetchBusinessPartnerSuccessImpl;

  List<IdName> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$FetchBusinessPartnerSuccessImplCopyWith<_$FetchBusinessPartnerSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchBusinessPartnerFailureImplCopyWith<$Res> {
  factory _$$FetchBusinessPartnerFailureImplCopyWith(
          _$FetchBusinessPartnerFailureImpl value,
          $Res Function(_$FetchBusinessPartnerFailureImpl) then) =
      __$$FetchBusinessPartnerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FetchBusinessPartnerFailureImplCopyWithImpl<$Res>
    extends _$FetchBusinessPartnerStateCopyWithImpl<$Res,
        _$FetchBusinessPartnerFailureImpl>
    implements _$$FetchBusinessPartnerFailureImplCopyWith<$Res> {
  __$$FetchBusinessPartnerFailureImplCopyWithImpl(
      _$FetchBusinessPartnerFailureImpl _value,
      $Res Function(_$FetchBusinessPartnerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FetchBusinessPartnerFailureImpl(
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

class _$FetchBusinessPartnerFailureImpl
    implements _FetchBusinessPartnerFailure {
  const _$FetchBusinessPartnerFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchBusinessPartnerState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBusinessPartnerFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBusinessPartnerFailureImplCopyWith<_$FetchBusinessPartnerFailureImpl>
      get copyWith => __$$FetchBusinessPartnerFailureImplCopyWithImpl<
          _$FetchBusinessPartnerFailureImpl>(this, _$identity);

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
    required TResult Function(_FetchBusinessPartnerInitial value) initial,
    required TResult Function(_FetchBusinessPartnerLoading value) loading,
    required TResult Function(_FetchBusinessPartnerSuccess value) success,
    required TResult Function(_FetchBusinessPartnerFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBusinessPartnerInitial value)? initial,
    TResult? Function(_FetchBusinessPartnerLoading value)? loading,
    TResult? Function(_FetchBusinessPartnerSuccess value)? success,
    TResult? Function(_FetchBusinessPartnerFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBusinessPartnerInitial value)? initial,
    TResult Function(_FetchBusinessPartnerLoading value)? loading,
    TResult Function(_FetchBusinessPartnerSuccess value)? success,
    TResult Function(_FetchBusinessPartnerFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchBusinessPartnerFailure
    implements FetchBusinessPartnerState {
  const factory _FetchBusinessPartnerFailure(final Failure failure) =
      _$FetchBusinessPartnerFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FetchBusinessPartnerFailureImplCopyWith<_$FetchBusinessPartnerFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

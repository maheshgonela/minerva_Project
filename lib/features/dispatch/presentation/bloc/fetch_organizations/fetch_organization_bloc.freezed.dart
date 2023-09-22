// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_organization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchOrganizationEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialOrganization,
    required TResult Function(String? query) fetchMoreOrganization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialOrganization,
    TResult? Function(String? query)? fetchMoreOrganization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialOrganization,
    TResult Function(String? query)? fetchMoreOrganization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialOrganization value)
        fetchInitialOrganization,
    required TResult Function(_FetchMoreOrganization value)
        fetchMoreOrganization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialOrganization value)?
        fetchInitialOrganization,
    TResult? Function(_FetchMoreOrganization value)? fetchMoreOrganization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialOrganization value)? fetchInitialOrganization,
    TResult Function(_FetchMoreOrganization value)? fetchMoreOrganization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchOrganizationEventCopyWith<FetchOrganizationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchOrganizationEventCopyWith<$Res> {
  factory $FetchOrganizationEventCopyWith(FetchOrganizationEvent value,
          $Res Function(FetchOrganizationEvent) then) =
      _$FetchOrganizationEventCopyWithImpl<$Res, FetchOrganizationEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$FetchOrganizationEventCopyWithImpl<$Res,
        $Val extends FetchOrganizationEvent>
    implements $FetchOrganizationEventCopyWith<$Res> {
  _$FetchOrganizationEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_FetchInitialOrganizationCopyWith<$Res>
    implements $FetchOrganizationEventCopyWith<$Res> {
  factory _$$_FetchInitialOrganizationCopyWith(
          _$_FetchInitialOrganization value,
          $Res Function(_$_FetchInitialOrganization) then) =
      __$$_FetchInitialOrganizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_FetchInitialOrganizationCopyWithImpl<$Res>
    extends _$FetchOrganizationEventCopyWithImpl<$Res,
        _$_FetchInitialOrganization>
    implements _$$_FetchInitialOrganizationCopyWith<$Res> {
  __$$_FetchInitialOrganizationCopyWithImpl(_$_FetchInitialOrganization _value,
      $Res Function(_$_FetchInitialOrganization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_FetchInitialOrganization(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchInitialOrganization implements _FetchInitialOrganization {
  const _$_FetchInitialOrganization({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchOrganizationEvent.fetchInitialOrganization(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchInitialOrganization &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchInitialOrganizationCopyWith<_$_FetchInitialOrganization>
      get copyWith => __$$_FetchInitialOrganizationCopyWithImpl<
          _$_FetchInitialOrganization>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialOrganization,
    required TResult Function(String? query) fetchMoreOrganization,
  }) {
    return fetchInitialOrganization(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialOrganization,
    TResult? Function(String? query)? fetchMoreOrganization,
  }) {
    return fetchInitialOrganization?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialOrganization,
    TResult Function(String? query)? fetchMoreOrganization,
    required TResult orElse(),
  }) {
    if (fetchInitialOrganization != null) {
      return fetchInitialOrganization(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialOrganization value)
        fetchInitialOrganization,
    required TResult Function(_FetchMoreOrganization value)
        fetchMoreOrganization,
  }) {
    return fetchInitialOrganization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialOrganization value)?
        fetchInitialOrganization,
    TResult? Function(_FetchMoreOrganization value)? fetchMoreOrganization,
  }) {
    return fetchInitialOrganization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialOrganization value)? fetchInitialOrganization,
    TResult Function(_FetchMoreOrganization value)? fetchMoreOrganization,
    required TResult orElse(),
  }) {
    if (fetchInitialOrganization != null) {
      return fetchInitialOrganization(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialOrganization implements FetchOrganizationEvent {
  const factory _FetchInitialOrganization({final String? query}) =
      _$_FetchInitialOrganization;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchInitialOrganizationCopyWith<_$_FetchInitialOrganization>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchMoreOrganizationCopyWith<$Res>
    implements $FetchOrganizationEventCopyWith<$Res> {
  factory _$$_FetchMoreOrganizationCopyWith(_$_FetchMoreOrganization value,
          $Res Function(_$_FetchMoreOrganization) then) =
      __$$_FetchMoreOrganizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_FetchMoreOrganizationCopyWithImpl<$Res>
    extends _$FetchOrganizationEventCopyWithImpl<$Res, _$_FetchMoreOrganization>
    implements _$$_FetchMoreOrganizationCopyWith<$Res> {
  __$$_FetchMoreOrganizationCopyWithImpl(_$_FetchMoreOrganization _value,
      $Res Function(_$_FetchMoreOrganization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_FetchMoreOrganization(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchMoreOrganization implements _FetchMoreOrganization {
  const _$_FetchMoreOrganization({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchOrganizationEvent.fetchMoreOrganization(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchMoreOrganization &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchMoreOrganizationCopyWith<_$_FetchMoreOrganization> get copyWith =>
      __$$_FetchMoreOrganizationCopyWithImpl<_$_FetchMoreOrganization>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialOrganization,
    required TResult Function(String? query) fetchMoreOrganization,
  }) {
    return fetchMoreOrganization(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialOrganization,
    TResult? Function(String? query)? fetchMoreOrganization,
  }) {
    return fetchMoreOrganization?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialOrganization,
    TResult Function(String? query)? fetchMoreOrganization,
    required TResult orElse(),
  }) {
    if (fetchMoreOrganization != null) {
      return fetchMoreOrganization(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialOrganization value)
        fetchInitialOrganization,
    required TResult Function(_FetchMoreOrganization value)
        fetchMoreOrganization,
  }) {
    return fetchMoreOrganization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialOrganization value)?
        fetchInitialOrganization,
    TResult? Function(_FetchMoreOrganization value)? fetchMoreOrganization,
  }) {
    return fetchMoreOrganization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialOrganization value)? fetchInitialOrganization,
    TResult Function(_FetchMoreOrganization value)? fetchMoreOrganization,
    required TResult orElse(),
  }) {
    if (fetchMoreOrganization != null) {
      return fetchMoreOrganization(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreOrganization implements FetchOrganizationEvent {
  const factory _FetchMoreOrganization({final String? query}) =
      _$_FetchMoreOrganization;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchMoreOrganizationCopyWith<_$_FetchMoreOrganization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchOrganizationState {
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
    required TResult Function(_FetchOrganizationInitial value) initial,
    required TResult Function(_FetchOrganizationLoading value) loading,
    required TResult Function(_FetchOrganizationSuccess value) success,
    required TResult Function(_FetchOrganizationFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganizationInitial value)? initial,
    TResult? Function(_FetchOrganizationLoading value)? loading,
    TResult? Function(_FetchOrganizationSuccess value)? success,
    TResult? Function(_FetchOrganizationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganizationInitial value)? initial,
    TResult Function(_FetchOrganizationLoading value)? loading,
    TResult Function(_FetchOrganizationSuccess value)? success,
    TResult Function(_FetchOrganizationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchOrganizationStateCopyWith<$Res> {
  factory $FetchOrganizationStateCopyWith(FetchOrganizationState value,
          $Res Function(FetchOrganizationState) then) =
      _$FetchOrganizationStateCopyWithImpl<$Res, FetchOrganizationState>;
}

/// @nodoc
class _$FetchOrganizationStateCopyWithImpl<$Res,
        $Val extends FetchOrganizationState>
    implements $FetchOrganizationStateCopyWith<$Res> {
  _$FetchOrganizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchOrganizationInitialCopyWith<$Res> {
  factory _$$_FetchOrganizationInitialCopyWith(
          _$_FetchOrganizationInitial value,
          $Res Function(_$_FetchOrganizationInitial) then) =
      __$$_FetchOrganizationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchOrganizationInitialCopyWithImpl<$Res>
    extends _$FetchOrganizationStateCopyWithImpl<$Res,
        _$_FetchOrganizationInitial>
    implements _$$_FetchOrganizationInitialCopyWith<$Res> {
  __$$_FetchOrganizationInitialCopyWithImpl(_$_FetchOrganizationInitial _value,
      $Res Function(_$_FetchOrganizationInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchOrganizationInitial implements _FetchOrganizationInitial {
  const _$_FetchOrganizationInitial();

  @override
  String toString() {
    return 'FetchOrganizationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrganizationInitial);
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
    required TResult Function(_FetchOrganizationInitial value) initial,
    required TResult Function(_FetchOrganizationLoading value) loading,
    required TResult Function(_FetchOrganizationSuccess value) success,
    required TResult Function(_FetchOrganizationFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganizationInitial value)? initial,
    TResult? Function(_FetchOrganizationLoading value)? loading,
    TResult? Function(_FetchOrganizationSuccess value)? success,
    TResult? Function(_FetchOrganizationFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganizationInitial value)? initial,
    TResult Function(_FetchOrganizationLoading value)? loading,
    TResult Function(_FetchOrganizationSuccess value)? success,
    TResult Function(_FetchOrganizationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchOrganizationInitial implements FetchOrganizationState {
  const factory _FetchOrganizationInitial() = _$_FetchOrganizationInitial;
}

/// @nodoc
abstract class _$$_FetchOrganizationLoadingCopyWith<$Res> {
  factory _$$_FetchOrganizationLoadingCopyWith(
          _$_FetchOrganizationLoading value,
          $Res Function(_$_FetchOrganizationLoading) then) =
      __$$_FetchOrganizationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchOrganizationLoadingCopyWithImpl<$Res>
    extends _$FetchOrganizationStateCopyWithImpl<$Res,
        _$_FetchOrganizationLoading>
    implements _$$_FetchOrganizationLoadingCopyWith<$Res> {
  __$$_FetchOrganizationLoadingCopyWithImpl(_$_FetchOrganizationLoading _value,
      $Res Function(_$_FetchOrganizationLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchOrganizationLoading implements _FetchOrganizationLoading {
  const _$_FetchOrganizationLoading();

  @override
  String toString() {
    return 'FetchOrganizationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrganizationLoading);
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
    required TResult Function(_FetchOrganizationInitial value) initial,
    required TResult Function(_FetchOrganizationLoading value) loading,
    required TResult Function(_FetchOrganizationSuccess value) success,
    required TResult Function(_FetchOrganizationFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganizationInitial value)? initial,
    TResult? Function(_FetchOrganizationLoading value)? loading,
    TResult? Function(_FetchOrganizationSuccess value)? success,
    TResult? Function(_FetchOrganizationFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganizationInitial value)? initial,
    TResult Function(_FetchOrganizationLoading value)? loading,
    TResult Function(_FetchOrganizationSuccess value)? success,
    TResult Function(_FetchOrganizationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchOrganizationLoading implements FetchOrganizationState {
  const factory _FetchOrganizationLoading() = _$_FetchOrganizationLoading;
}

/// @nodoc
abstract class _$$_FetchOrganizationSuccessCopyWith<$Res> {
  factory _$$_FetchOrganizationSuccessCopyWith(
          _$_FetchOrganizationSuccess value,
          $Res Function(_$_FetchOrganizationSuccess) then) =
      __$$_FetchOrganizationSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<IdName> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$_FetchOrganizationSuccessCopyWithImpl<$Res>
    extends _$FetchOrganizationStateCopyWithImpl<$Res,
        _$_FetchOrganizationSuccess>
    implements _$$_FetchOrganizationSuccessCopyWith<$Res> {
  __$$_FetchOrganizationSuccessCopyWithImpl(_$_FetchOrganizationSuccess _value,
      $Res Function(_$_FetchOrganizationSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchOrganizationSuccess(
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

class _$_FetchOrganizationSuccess implements _FetchOrganizationSuccess {
  const _$_FetchOrganizationSuccess(
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
    return 'FetchOrganizationState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrganizationSuccess &&
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
  _$$_FetchOrganizationSuccessCopyWith<_$_FetchOrganizationSuccess>
      get copyWith => __$$_FetchOrganizationSuccessCopyWithImpl<
          _$_FetchOrganizationSuccess>(this, _$identity);

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
    required TResult Function(_FetchOrganizationInitial value) initial,
    required TResult Function(_FetchOrganizationLoading value) loading,
    required TResult Function(_FetchOrganizationSuccess value) success,
    required TResult Function(_FetchOrganizationFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganizationInitial value)? initial,
    TResult? Function(_FetchOrganizationLoading value)? loading,
    TResult? Function(_FetchOrganizationSuccess value)? success,
    TResult? Function(_FetchOrganizationFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganizationInitial value)? initial,
    TResult Function(_FetchOrganizationLoading value)? loading,
    TResult Function(_FetchOrganizationSuccess value)? success,
    TResult Function(_FetchOrganizationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchOrganizationSuccess implements FetchOrganizationState {
  const factory _FetchOrganizationSuccess(
      {required final List<IdName> records,
      required final bool hasReachedMax,
      final String? query}) = _$_FetchOrganizationSuccess;

  List<IdName> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_FetchOrganizationSuccessCopyWith<_$_FetchOrganizationSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchOrganizationFailureCopyWith<$Res> {
  factory _$$_FetchOrganizationFailureCopyWith(
          _$_FetchOrganizationFailure value,
          $Res Function(_$_FetchOrganizationFailure) then) =
      __$$_FetchOrganizationFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchOrganizationFailureCopyWithImpl<$Res>
    extends _$FetchOrganizationStateCopyWithImpl<$Res,
        _$_FetchOrganizationFailure>
    implements _$$_FetchOrganizationFailureCopyWith<$Res> {
  __$$_FetchOrganizationFailureCopyWithImpl(_$_FetchOrganizationFailure _value,
      $Res Function(_$_FetchOrganizationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchOrganizationFailure(
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

class _$_FetchOrganizationFailure implements _FetchOrganizationFailure {
  const _$_FetchOrganizationFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchOrganizationState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrganizationFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchOrganizationFailureCopyWith<_$_FetchOrganizationFailure>
      get copyWith => __$$_FetchOrganizationFailureCopyWithImpl<
          _$_FetchOrganizationFailure>(this, _$identity);

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
    required TResult Function(_FetchOrganizationInitial value) initial,
    required TResult Function(_FetchOrganizationLoading value) loading,
    required TResult Function(_FetchOrganizationSuccess value) success,
    required TResult Function(_FetchOrganizationFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganizationInitial value)? initial,
    TResult? Function(_FetchOrganizationLoading value)? loading,
    TResult? Function(_FetchOrganizationSuccess value)? success,
    TResult? Function(_FetchOrganizationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganizationInitial value)? initial,
    TResult Function(_FetchOrganizationLoading value)? loading,
    TResult Function(_FetchOrganizationSuccess value)? success,
    TResult Function(_FetchOrganizationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchOrganizationFailure implements FetchOrganizationState {
  const factory _FetchOrganizationFailure(final Failure failure) =
      _$_FetchOrganizationFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FetchOrganizationFailureCopyWith<_$_FetchOrganizationFailure>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_shipment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchShipmentEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialShipment,
    required TResult Function(String? query) fetchMoreShipment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialShipment,
    TResult? Function(String? query)? fetchMoreShipment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialShipment,
    TResult Function(String? query)? fetchMoreShipment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialShipment value) fetchInitialShipment,
    required TResult Function(_FetchMoreShipment value) fetchMoreShipment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialShipment value)? fetchInitialShipment,
    TResult? Function(_FetchMoreShipment value)? fetchMoreShipment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialShipment value)? fetchInitialShipment,
    TResult Function(_FetchMoreShipment value)? fetchMoreShipment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchShipmentEventCopyWith<FetchShipmentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchShipmentEventCopyWith<$Res> {
  factory $FetchShipmentEventCopyWith(
          FetchShipmentEvent value, $Res Function(FetchShipmentEvent) then) =
      _$FetchShipmentEventCopyWithImpl<$Res, FetchShipmentEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$FetchShipmentEventCopyWithImpl<$Res, $Val extends FetchShipmentEvent>
    implements $FetchShipmentEventCopyWith<$Res> {
  _$FetchShipmentEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_FetchInitialShipmentCopyWith<$Res>
    implements $FetchShipmentEventCopyWith<$Res> {
  factory _$$_FetchInitialShipmentCopyWith(_$_FetchInitialShipment value,
          $Res Function(_$_FetchInitialShipment) then) =
      __$$_FetchInitialShipmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_FetchInitialShipmentCopyWithImpl<$Res>
    extends _$FetchShipmentEventCopyWithImpl<$Res, _$_FetchInitialShipment>
    implements _$$_FetchInitialShipmentCopyWith<$Res> {
  __$$_FetchInitialShipmentCopyWithImpl(_$_FetchInitialShipment _value,
      $Res Function(_$_FetchInitialShipment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_FetchInitialShipment(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchInitialShipment implements _FetchInitialShipment {
  const _$_FetchInitialShipment({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchShipmentEvent.fetchInitialShipment(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchInitialShipment &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchInitialShipmentCopyWith<_$_FetchInitialShipment> get copyWith =>
      __$$_FetchInitialShipmentCopyWithImpl<_$_FetchInitialShipment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialShipment,
    required TResult Function(String? query) fetchMoreShipment,
  }) {
    return fetchInitialShipment(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialShipment,
    TResult? Function(String? query)? fetchMoreShipment,
  }) {
    return fetchInitialShipment?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialShipment,
    TResult Function(String? query)? fetchMoreShipment,
    required TResult orElse(),
  }) {
    if (fetchInitialShipment != null) {
      return fetchInitialShipment(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialShipment value) fetchInitialShipment,
    required TResult Function(_FetchMoreShipment value) fetchMoreShipment,
  }) {
    return fetchInitialShipment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialShipment value)? fetchInitialShipment,
    TResult? Function(_FetchMoreShipment value)? fetchMoreShipment,
  }) {
    return fetchInitialShipment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialShipment value)? fetchInitialShipment,
    TResult Function(_FetchMoreShipment value)? fetchMoreShipment,
    required TResult orElse(),
  }) {
    if (fetchInitialShipment != null) {
      return fetchInitialShipment(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialShipment implements FetchShipmentEvent {
  const factory _FetchInitialShipment({final String? query}) =
      _$_FetchInitialShipment;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchInitialShipmentCopyWith<_$_FetchInitialShipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchMoreShipmentCopyWith<$Res>
    implements $FetchShipmentEventCopyWith<$Res> {
  factory _$$_FetchMoreShipmentCopyWith(_$_FetchMoreShipment value,
          $Res Function(_$_FetchMoreShipment) then) =
      __$$_FetchMoreShipmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_FetchMoreShipmentCopyWithImpl<$Res>
    extends _$FetchShipmentEventCopyWithImpl<$Res, _$_FetchMoreShipment>
    implements _$$_FetchMoreShipmentCopyWith<$Res> {
  __$$_FetchMoreShipmentCopyWithImpl(
      _$_FetchMoreShipment _value, $Res Function(_$_FetchMoreShipment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_FetchMoreShipment(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchMoreShipment implements _FetchMoreShipment {
  const _$_FetchMoreShipment({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchShipmentEvent.fetchMoreShipment(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchMoreShipment &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchMoreShipmentCopyWith<_$_FetchMoreShipment> get copyWith =>
      __$$_FetchMoreShipmentCopyWithImpl<_$_FetchMoreShipment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialShipment,
    required TResult Function(String? query) fetchMoreShipment,
  }) {
    return fetchMoreShipment(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialShipment,
    TResult? Function(String? query)? fetchMoreShipment,
  }) {
    return fetchMoreShipment?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialShipment,
    TResult Function(String? query)? fetchMoreShipment,
    required TResult orElse(),
  }) {
    if (fetchMoreShipment != null) {
      return fetchMoreShipment(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialShipment value) fetchInitialShipment,
    required TResult Function(_FetchMoreShipment value) fetchMoreShipment,
  }) {
    return fetchMoreShipment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialShipment value)? fetchInitialShipment,
    TResult? Function(_FetchMoreShipment value)? fetchMoreShipment,
  }) {
    return fetchMoreShipment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialShipment value)? fetchInitialShipment,
    TResult Function(_FetchMoreShipment value)? fetchMoreShipment,
    required TResult orElse(),
  }) {
    if (fetchMoreShipment != null) {
      return fetchMoreShipment(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreShipment implements FetchShipmentEvent {
  const factory _FetchMoreShipment({final String? query}) =
      _$_FetchMoreShipment;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchMoreShipmentCopyWith<_$_FetchMoreShipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchShipmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shipment> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Shipment> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Shipment> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchShipmentInitial value) initial,
    required TResult Function(_FetchShipmentLoading value) loading,
    required TResult Function(_FetchShipmentSuccess value) success,
    required TResult Function(_FetchShipmentFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShipmentInitial value)? initial,
    TResult? Function(_FetchShipmentLoading value)? loading,
    TResult? Function(_FetchShipmentSuccess value)? success,
    TResult? Function(_FetchShipmentFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShipmentInitial value)? initial,
    TResult Function(_FetchShipmentLoading value)? loading,
    TResult Function(_FetchShipmentSuccess value)? success,
    TResult Function(_FetchShipmentFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchShipmentStateCopyWith<$Res> {
  factory $FetchShipmentStateCopyWith(
          FetchShipmentState value, $Res Function(FetchShipmentState) then) =
      _$FetchShipmentStateCopyWithImpl<$Res, FetchShipmentState>;
}

/// @nodoc
class _$FetchShipmentStateCopyWithImpl<$Res, $Val extends FetchShipmentState>
    implements $FetchShipmentStateCopyWith<$Res> {
  _$FetchShipmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchShipmentInitialCopyWith<$Res> {
  factory _$$_FetchShipmentInitialCopyWith(_$_FetchShipmentInitial value,
          $Res Function(_$_FetchShipmentInitial) then) =
      __$$_FetchShipmentInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchShipmentInitialCopyWithImpl<$Res>
    extends _$FetchShipmentStateCopyWithImpl<$Res, _$_FetchShipmentInitial>
    implements _$$_FetchShipmentInitialCopyWith<$Res> {
  __$$_FetchShipmentInitialCopyWithImpl(_$_FetchShipmentInitial _value,
      $Res Function(_$_FetchShipmentInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchShipmentInitial implements _FetchShipmentInitial {
  const _$_FetchShipmentInitial();

  @override
  String toString() {
    return 'FetchShipmentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchShipmentInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shipment> records, bool hasReachedMax, String? query)
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
            List<Shipment> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<Shipment> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchShipmentInitial value) initial,
    required TResult Function(_FetchShipmentLoading value) loading,
    required TResult Function(_FetchShipmentSuccess value) success,
    required TResult Function(_FetchShipmentFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShipmentInitial value)? initial,
    TResult? Function(_FetchShipmentLoading value)? loading,
    TResult? Function(_FetchShipmentSuccess value)? success,
    TResult? Function(_FetchShipmentFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShipmentInitial value)? initial,
    TResult Function(_FetchShipmentLoading value)? loading,
    TResult Function(_FetchShipmentSuccess value)? success,
    TResult Function(_FetchShipmentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchShipmentInitial implements FetchShipmentState {
  const factory _FetchShipmentInitial() = _$_FetchShipmentInitial;
}

/// @nodoc
abstract class _$$_FetchShipmentLoadingCopyWith<$Res> {
  factory _$$_FetchShipmentLoadingCopyWith(_$_FetchShipmentLoading value,
          $Res Function(_$_FetchShipmentLoading) then) =
      __$$_FetchShipmentLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchShipmentLoadingCopyWithImpl<$Res>
    extends _$FetchShipmentStateCopyWithImpl<$Res, _$_FetchShipmentLoading>
    implements _$$_FetchShipmentLoadingCopyWith<$Res> {
  __$$_FetchShipmentLoadingCopyWithImpl(_$_FetchShipmentLoading _value,
      $Res Function(_$_FetchShipmentLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchShipmentLoading implements _FetchShipmentLoading {
  const _$_FetchShipmentLoading();

  @override
  String toString() {
    return 'FetchShipmentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchShipmentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shipment> records, bool hasReachedMax, String? query)
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
            List<Shipment> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<Shipment> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchShipmentInitial value) initial,
    required TResult Function(_FetchShipmentLoading value) loading,
    required TResult Function(_FetchShipmentSuccess value) success,
    required TResult Function(_FetchShipmentFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShipmentInitial value)? initial,
    TResult? Function(_FetchShipmentLoading value)? loading,
    TResult? Function(_FetchShipmentSuccess value)? success,
    TResult? Function(_FetchShipmentFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShipmentInitial value)? initial,
    TResult Function(_FetchShipmentLoading value)? loading,
    TResult Function(_FetchShipmentSuccess value)? success,
    TResult Function(_FetchShipmentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchShipmentLoading implements FetchShipmentState {
  const factory _FetchShipmentLoading() = _$_FetchShipmentLoading;
}

/// @nodoc
abstract class _$$_FetchShipmentSuccessCopyWith<$Res> {
  factory _$$_FetchShipmentSuccessCopyWith(_$_FetchShipmentSuccess value,
          $Res Function(_$_FetchShipmentSuccess) then) =
      __$$_FetchShipmentSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Shipment> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$_FetchShipmentSuccessCopyWithImpl<$Res>
    extends _$FetchShipmentStateCopyWithImpl<$Res, _$_FetchShipmentSuccess>
    implements _$$_FetchShipmentSuccessCopyWith<$Res> {
  __$$_FetchShipmentSuccessCopyWithImpl(_$_FetchShipmentSuccess _value,
      $Res Function(_$_FetchShipmentSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchShipmentSuccess(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Shipment>,
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

class _$_FetchShipmentSuccess implements _FetchShipmentSuccess {
  const _$_FetchShipmentSuccess(
      {required final List<Shipment> records,
      required this.hasReachedMax,
      this.query})
      : _records = records;

  final List<Shipment> _records;
  @override
  List<Shipment> get records {
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
    return 'FetchShipmentState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchShipmentSuccess &&
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
  _$$_FetchShipmentSuccessCopyWith<_$_FetchShipmentSuccess> get copyWith =>
      __$$_FetchShipmentSuccessCopyWithImpl<_$_FetchShipmentSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shipment> records, bool hasReachedMax, String? query)
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
            List<Shipment> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<Shipment> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchShipmentInitial value) initial,
    required TResult Function(_FetchShipmentLoading value) loading,
    required TResult Function(_FetchShipmentSuccess value) success,
    required TResult Function(_FetchShipmentFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShipmentInitial value)? initial,
    TResult? Function(_FetchShipmentLoading value)? loading,
    TResult? Function(_FetchShipmentSuccess value)? success,
    TResult? Function(_FetchShipmentFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShipmentInitial value)? initial,
    TResult Function(_FetchShipmentLoading value)? loading,
    TResult Function(_FetchShipmentSuccess value)? success,
    TResult Function(_FetchShipmentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchShipmentSuccess implements FetchShipmentState {
  const factory _FetchShipmentSuccess(
      {required final List<Shipment> records,
      required final bool hasReachedMax,
      final String? query}) = _$_FetchShipmentSuccess;

  List<Shipment> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_FetchShipmentSuccessCopyWith<_$_FetchShipmentSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchShipmentFailureCopyWith<$Res> {
  factory _$$_FetchShipmentFailureCopyWith(_$_FetchShipmentFailure value,
          $Res Function(_$_FetchShipmentFailure) then) =
      __$$_FetchShipmentFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchShipmentFailureCopyWithImpl<$Res>
    extends _$FetchShipmentStateCopyWithImpl<$Res, _$_FetchShipmentFailure>
    implements _$$_FetchShipmentFailureCopyWith<$Res> {
  __$$_FetchShipmentFailureCopyWithImpl(_$_FetchShipmentFailure _value,
      $Res Function(_$_FetchShipmentFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchShipmentFailure(
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

class _$_FetchShipmentFailure implements _FetchShipmentFailure {
  const _$_FetchShipmentFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchShipmentState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchShipmentFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchShipmentFailureCopyWith<_$_FetchShipmentFailure> get copyWith =>
      __$$_FetchShipmentFailureCopyWithImpl<_$_FetchShipmentFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Shipment> records, bool hasReachedMax, String? query)
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
            List<Shipment> records, bool hasReachedMax, String? query)?
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
    TResult Function(List<Shipment> records, bool hasReachedMax, String? query)?
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
    required TResult Function(_FetchShipmentInitial value) initial,
    required TResult Function(_FetchShipmentLoading value) loading,
    required TResult Function(_FetchShipmentSuccess value) success,
    required TResult Function(_FetchShipmentFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchShipmentInitial value)? initial,
    TResult? Function(_FetchShipmentLoading value)? loading,
    TResult? Function(_FetchShipmentSuccess value)? success,
    TResult? Function(_FetchShipmentFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchShipmentInitial value)? initial,
    TResult Function(_FetchShipmentLoading value)? loading,
    TResult Function(_FetchShipmentSuccess value)? success,
    TResult Function(_FetchShipmentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchShipmentFailure implements FetchShipmentState {
  const factory _FetchShipmentFailure(final Failure failure) =
      _$_FetchShipmentFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FetchShipmentFailureCopyWith<_$_FetchShipmentFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

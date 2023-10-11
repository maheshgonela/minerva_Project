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
abstract class _$$FetchInitialShipmentImplCopyWith<$Res>
    implements $FetchShipmentEventCopyWith<$Res> {
  factory _$$FetchInitialShipmentImplCopyWith(_$FetchInitialShipmentImpl value,
          $Res Function(_$FetchInitialShipmentImpl) then) =
      __$$FetchInitialShipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchInitialShipmentImplCopyWithImpl<$Res>
    extends _$FetchShipmentEventCopyWithImpl<$Res, _$FetchInitialShipmentImpl>
    implements _$$FetchInitialShipmentImplCopyWith<$Res> {
  __$$FetchInitialShipmentImplCopyWithImpl(_$FetchInitialShipmentImpl _value,
      $Res Function(_$FetchInitialShipmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchInitialShipmentImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchInitialShipmentImpl implements _FetchInitialShipment {
  const _$FetchInitialShipmentImpl({this.query});

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
            other is _$FetchInitialShipmentImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchInitialShipmentImplCopyWith<_$FetchInitialShipmentImpl>
      get copyWith =>
          __$$FetchInitialShipmentImplCopyWithImpl<_$FetchInitialShipmentImpl>(
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
      _$FetchInitialShipmentImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchInitialShipmentImplCopyWith<_$FetchInitialShipmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreShipmentImplCopyWith<$Res>
    implements $FetchShipmentEventCopyWith<$Res> {
  factory _$$FetchMoreShipmentImplCopyWith(_$FetchMoreShipmentImpl value,
          $Res Function(_$FetchMoreShipmentImpl) then) =
      __$$FetchMoreShipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchMoreShipmentImplCopyWithImpl<$Res>
    extends _$FetchShipmentEventCopyWithImpl<$Res, _$FetchMoreShipmentImpl>
    implements _$$FetchMoreShipmentImplCopyWith<$Res> {
  __$$FetchMoreShipmentImplCopyWithImpl(_$FetchMoreShipmentImpl _value,
      $Res Function(_$FetchMoreShipmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchMoreShipmentImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchMoreShipmentImpl implements _FetchMoreShipment {
  const _$FetchMoreShipmentImpl({this.query});

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
            other is _$FetchMoreShipmentImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreShipmentImplCopyWith<_$FetchMoreShipmentImpl> get copyWith =>
      __$$FetchMoreShipmentImplCopyWithImpl<_$FetchMoreShipmentImpl>(
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
      _$FetchMoreShipmentImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoreShipmentImplCopyWith<_$FetchMoreShipmentImpl> get copyWith =>
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
abstract class _$$FetchShipmentInitialImplCopyWith<$Res> {
  factory _$$FetchShipmentInitialImplCopyWith(_$FetchShipmentInitialImpl value,
          $Res Function(_$FetchShipmentInitialImpl) then) =
      __$$FetchShipmentInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchShipmentInitialImplCopyWithImpl<$Res>
    extends _$FetchShipmentStateCopyWithImpl<$Res, _$FetchShipmentInitialImpl>
    implements _$$FetchShipmentInitialImplCopyWith<$Res> {
  __$$FetchShipmentInitialImplCopyWithImpl(_$FetchShipmentInitialImpl _value,
      $Res Function(_$FetchShipmentInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchShipmentInitialImpl implements _FetchShipmentInitial {
  const _$FetchShipmentInitialImpl();

  @override
  String toString() {
    return 'FetchShipmentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchShipmentInitialImpl);
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
  const factory _FetchShipmentInitial() = _$FetchShipmentInitialImpl;
}

/// @nodoc
abstract class _$$FetchShipmentLoadingImplCopyWith<$Res> {
  factory _$$FetchShipmentLoadingImplCopyWith(_$FetchShipmentLoadingImpl value,
          $Res Function(_$FetchShipmentLoadingImpl) then) =
      __$$FetchShipmentLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchShipmentLoadingImplCopyWithImpl<$Res>
    extends _$FetchShipmentStateCopyWithImpl<$Res, _$FetchShipmentLoadingImpl>
    implements _$$FetchShipmentLoadingImplCopyWith<$Res> {
  __$$FetchShipmentLoadingImplCopyWithImpl(_$FetchShipmentLoadingImpl _value,
      $Res Function(_$FetchShipmentLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchShipmentLoadingImpl implements _FetchShipmentLoading {
  const _$FetchShipmentLoadingImpl();

  @override
  String toString() {
    return 'FetchShipmentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchShipmentLoadingImpl);
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
  const factory _FetchShipmentLoading() = _$FetchShipmentLoadingImpl;
}

/// @nodoc
abstract class _$$FetchShipmentSuccessImplCopyWith<$Res> {
  factory _$$FetchShipmentSuccessImplCopyWith(_$FetchShipmentSuccessImpl value,
          $Res Function(_$FetchShipmentSuccessImpl) then) =
      __$$FetchShipmentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Shipment> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$FetchShipmentSuccessImplCopyWithImpl<$Res>
    extends _$FetchShipmentStateCopyWithImpl<$Res, _$FetchShipmentSuccessImpl>
    implements _$$FetchShipmentSuccessImplCopyWith<$Res> {
  __$$FetchShipmentSuccessImplCopyWithImpl(_$FetchShipmentSuccessImpl _value,
      $Res Function(_$FetchShipmentSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$FetchShipmentSuccessImpl(
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

class _$FetchShipmentSuccessImpl implements _FetchShipmentSuccess {
  const _$FetchShipmentSuccessImpl(
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
            other is _$FetchShipmentSuccessImpl &&
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
  _$$FetchShipmentSuccessImplCopyWith<_$FetchShipmentSuccessImpl>
      get copyWith =>
          __$$FetchShipmentSuccessImplCopyWithImpl<_$FetchShipmentSuccessImpl>(
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
      final String? query}) = _$FetchShipmentSuccessImpl;

  List<Shipment> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$FetchShipmentSuccessImplCopyWith<_$FetchShipmentSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchShipmentFailureImplCopyWith<$Res> {
  factory _$$FetchShipmentFailureImplCopyWith(_$FetchShipmentFailureImpl value,
          $Res Function(_$FetchShipmentFailureImpl) then) =
      __$$FetchShipmentFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FetchShipmentFailureImplCopyWithImpl<$Res>
    extends _$FetchShipmentStateCopyWithImpl<$Res, _$FetchShipmentFailureImpl>
    implements _$$FetchShipmentFailureImplCopyWith<$Res> {
  __$$FetchShipmentFailureImplCopyWithImpl(_$FetchShipmentFailureImpl _value,
      $Res Function(_$FetchShipmentFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FetchShipmentFailureImpl(
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

class _$FetchShipmentFailureImpl implements _FetchShipmentFailure {
  const _$FetchShipmentFailureImpl(this.failure);

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
            other is _$FetchShipmentFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchShipmentFailureImplCopyWith<_$FetchShipmentFailureImpl>
      get copyWith =>
          __$$FetchShipmentFailureImplCopyWithImpl<_$FetchShipmentFailureImpl>(
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
      _$FetchShipmentFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FetchShipmentFailureImplCopyWith<_$FetchShipmentFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

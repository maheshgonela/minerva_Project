// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_trips_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopTripsEvent {
  String get purchaseOrderId => throw _privateConstructorUsedError;
  bool get fromDispatchSection => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId, bool fromDispatchSection)
        fetchBakeryProducts,
    required TResult Function(String purchaseOrderId, bool fromDispatchSection)
        fetchSweetsProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchBakeryProducts,
    TResult? Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchSweetsProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchBakeryProducts,
    TResult Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialDispatchOrderedproduct value)
        fetchBakeryProducts,
    required TResult Function(_fetchMoreDispatchOrderedproduct value)
        fetchSweetsProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult? Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopTripsEventCopyWith<ShopTripsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopTripsEventCopyWith<$Res> {
  factory $ShopTripsEventCopyWith(
          ShopTripsEvent value, $Res Function(ShopTripsEvent) then) =
      _$ShopTripsEventCopyWithImpl<$Res, ShopTripsEvent>;
  @useResult
  $Res call({String purchaseOrderId, bool fromDispatchSection});
}

/// @nodoc
class _$ShopTripsEventCopyWithImpl<$Res, $Val extends ShopTripsEvent>
    implements $ShopTripsEventCopyWith<$Res> {
  _$ShopTripsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
    Object? fromDispatchSection = null,
  }) {
    return _then(_value.copyWith(
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      fromDispatchSection: null == fromDispatchSection
          ? _value.fromDispatchSection
          : fromDispatchSection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_fetchInitialDispatchOrderedproductCopyWith<$Res>
    implements $ShopTripsEventCopyWith<$Res> {
  factory _$$_fetchInitialDispatchOrderedproductCopyWith(
          _$_fetchInitialDispatchOrderedproduct value,
          $Res Function(_$_fetchInitialDispatchOrderedproduct) then) =
      __$$_fetchInitialDispatchOrderedproductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId, bool fromDispatchSection});
}

/// @nodoc
class __$$_fetchInitialDispatchOrderedproductCopyWithImpl<$Res>
    extends _$ShopTripsEventCopyWithImpl<$Res,
        _$_fetchInitialDispatchOrderedproduct>
    implements _$$_fetchInitialDispatchOrderedproductCopyWith<$Res> {
  __$$_fetchInitialDispatchOrderedproductCopyWithImpl(
      _$_fetchInitialDispatchOrderedproduct _value,
      $Res Function(_$_fetchInitialDispatchOrderedproduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
    Object? fromDispatchSection = null,
  }) {
    return _then(_$_fetchInitialDispatchOrderedproduct(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      fromDispatchSection: null == fromDispatchSection
          ? _value.fromDispatchSection
          : fromDispatchSection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_fetchInitialDispatchOrderedproduct
    implements _fetchInitialDispatchOrderedproduct {
  const _$_fetchInitialDispatchOrderedproduct(this.purchaseOrderId,
      {required this.fromDispatchSection});

  @override
  final String purchaseOrderId;
  @override
  final bool fromDispatchSection;

  @override
  String toString() {
    return 'ShopTripsEvent.fetchBakeryProducts(purchaseOrderId: $purchaseOrderId, fromDispatchSection: $fromDispatchSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_fetchInitialDispatchOrderedproduct &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.fromDispatchSection, fromDispatchSection) ||
                other.fromDispatchSection == fromDispatchSection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, purchaseOrderId, fromDispatchSection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_fetchInitialDispatchOrderedproductCopyWith<
          _$_fetchInitialDispatchOrderedproduct>
      get copyWith => __$$_fetchInitialDispatchOrderedproductCopyWithImpl<
          _$_fetchInitialDispatchOrderedproduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId, bool fromDispatchSection)
        fetchBakeryProducts,
    required TResult Function(String purchaseOrderId, bool fromDispatchSection)
        fetchSweetsProducts,
  }) {
    return fetchBakeryProducts(purchaseOrderId, fromDispatchSection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchBakeryProducts,
    TResult? Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchSweetsProducts,
  }) {
    return fetchBakeryProducts?.call(purchaseOrderId, fromDispatchSection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchBakeryProducts,
    TResult Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) {
    if (fetchBakeryProducts != null) {
      return fetchBakeryProducts(purchaseOrderId, fromDispatchSection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialDispatchOrderedproduct value)
        fetchBakeryProducts,
    required TResult Function(_fetchMoreDispatchOrderedproduct value)
        fetchSweetsProducts,
  }) {
    return fetchBakeryProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult? Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
  }) {
    return fetchBakeryProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) {
    if (fetchBakeryProducts != null) {
      return fetchBakeryProducts(this);
    }
    return orElse();
  }
}

abstract class _fetchInitialDispatchOrderedproduct implements ShopTripsEvent {
  const factory _fetchInitialDispatchOrderedproduct(
          final String purchaseOrderId,
          {required final bool fromDispatchSection}) =
      _$_fetchInitialDispatchOrderedproduct;

  @override
  String get purchaseOrderId;
  @override
  bool get fromDispatchSection;
  @override
  @JsonKey(ignore: true)
  _$$_fetchInitialDispatchOrderedproductCopyWith<
          _$_fetchInitialDispatchOrderedproduct>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_fetchMoreDispatchOrderedproductCopyWith<$Res>
    implements $ShopTripsEventCopyWith<$Res> {
  factory _$$_fetchMoreDispatchOrderedproductCopyWith(
          _$_fetchMoreDispatchOrderedproduct value,
          $Res Function(_$_fetchMoreDispatchOrderedproduct) then) =
      __$$_fetchMoreDispatchOrderedproductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId, bool fromDispatchSection});
}

/// @nodoc
class __$$_fetchMoreDispatchOrderedproductCopyWithImpl<$Res>
    extends _$ShopTripsEventCopyWithImpl<$Res,
        _$_fetchMoreDispatchOrderedproduct>
    implements _$$_fetchMoreDispatchOrderedproductCopyWith<$Res> {
  __$$_fetchMoreDispatchOrderedproductCopyWithImpl(
      _$_fetchMoreDispatchOrderedproduct _value,
      $Res Function(_$_fetchMoreDispatchOrderedproduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
    Object? fromDispatchSection = null,
  }) {
    return _then(_$_fetchMoreDispatchOrderedproduct(
      null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      fromDispatchSection: null == fromDispatchSection
          ? _value.fromDispatchSection
          : fromDispatchSection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_fetchMoreDispatchOrderedproduct
    implements _fetchMoreDispatchOrderedproduct {
  const _$_fetchMoreDispatchOrderedproduct(this.purchaseOrderId,
      {required this.fromDispatchSection});

  @override
  final String purchaseOrderId;
  @override
  final bool fromDispatchSection;

  @override
  String toString() {
    return 'ShopTripsEvent.fetchSweetsProducts(purchaseOrderId: $purchaseOrderId, fromDispatchSection: $fromDispatchSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_fetchMoreDispatchOrderedproduct &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.fromDispatchSection, fromDispatchSection) ||
                other.fromDispatchSection == fromDispatchSection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, purchaseOrderId, fromDispatchSection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_fetchMoreDispatchOrderedproductCopyWith<
          _$_fetchMoreDispatchOrderedproduct>
      get copyWith => __$$_fetchMoreDispatchOrderedproductCopyWithImpl<
          _$_fetchMoreDispatchOrderedproduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String purchaseOrderId, bool fromDispatchSection)
        fetchBakeryProducts,
    required TResult Function(String purchaseOrderId, bool fromDispatchSection)
        fetchSweetsProducts,
  }) {
    return fetchSweetsProducts(purchaseOrderId, fromDispatchSection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchBakeryProducts,
    TResult? Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchSweetsProducts,
  }) {
    return fetchSweetsProducts?.call(purchaseOrderId, fromDispatchSection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchBakeryProducts,
    TResult Function(String purchaseOrderId, bool fromDispatchSection)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) {
    if (fetchSweetsProducts != null) {
      return fetchSweetsProducts(purchaseOrderId, fromDispatchSection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchInitialDispatchOrderedproduct value)
        fetchBakeryProducts,
    required TResult Function(_fetchMoreDispatchOrderedproduct value)
        fetchSweetsProducts,
  }) {
    return fetchSweetsProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult? Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
  }) {
    return fetchSweetsProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchInitialDispatchOrderedproduct value)?
        fetchBakeryProducts,
    TResult Function(_fetchMoreDispatchOrderedproduct value)?
        fetchSweetsProducts,
    required TResult orElse(),
  }) {
    if (fetchSweetsProducts != null) {
      return fetchSweetsProducts(this);
    }
    return orElse();
  }
}

abstract class _fetchMoreDispatchOrderedproduct implements ShopTripsEvent {
  const factory _fetchMoreDispatchOrderedproduct(final String purchaseOrderId,
          {required final bool fromDispatchSection}) =
      _$_fetchMoreDispatchOrderedproduct;

  @override
  String get purchaseOrderId;
  @override
  bool get fromDispatchSection;
  @override
  @JsonKey(ignore: true)
  _$$_fetchMoreDispatchOrderedproductCopyWith<
          _$_fetchMoreDispatchOrderedproduct>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShopTripsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ShopDispatchProducts records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShopTripsInitial value) initial,
    required TResult Function(_ShopTripsLoading value) loading,
    required TResult Function(_ShopTripsSuccess value) success,
    required TResult Function(_ShopTripsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopTripsInitial value)? initial,
    TResult? Function(_ShopTripsLoading value)? loading,
    TResult? Function(_ShopTripsSuccess value)? success,
    TResult? Function(_ShopTripsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopTripsInitial value)? initial,
    TResult Function(_ShopTripsLoading value)? loading,
    TResult Function(_ShopTripsSuccess value)? success,
    TResult Function(_ShopTripsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopTripsStateCopyWith<$Res> {
  factory $ShopTripsStateCopyWith(
          ShopTripsState value, $Res Function(ShopTripsState) then) =
      _$ShopTripsStateCopyWithImpl<$Res, ShopTripsState>;
}

/// @nodoc
class _$ShopTripsStateCopyWithImpl<$Res, $Val extends ShopTripsState>
    implements $ShopTripsStateCopyWith<$Res> {
  _$ShopTripsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ShopTripsInitialCopyWith<$Res> {
  factory _$$_ShopTripsInitialCopyWith(
          _$_ShopTripsInitial value, $Res Function(_$_ShopTripsInitial) then) =
      __$$_ShopTripsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShopTripsInitialCopyWithImpl<$Res>
    extends _$ShopTripsStateCopyWithImpl<$Res, _$_ShopTripsInitial>
    implements _$$_ShopTripsInitialCopyWith<$Res> {
  __$$_ShopTripsInitialCopyWithImpl(
      _$_ShopTripsInitial _value, $Res Function(_$_ShopTripsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShopTripsInitial implements _ShopTripsInitial {
  const _$_ShopTripsInitial();

  @override
  String toString() {
    return 'ShopTripsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShopTripsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ShopDispatchProducts records, bool hasReachedMax, String? query)
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
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
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
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
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
    required TResult Function(_ShopTripsInitial value) initial,
    required TResult Function(_ShopTripsLoading value) loading,
    required TResult Function(_ShopTripsSuccess value) success,
    required TResult Function(_ShopTripsFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopTripsInitial value)? initial,
    TResult? Function(_ShopTripsLoading value)? loading,
    TResult? Function(_ShopTripsSuccess value)? success,
    TResult? Function(_ShopTripsFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopTripsInitial value)? initial,
    TResult Function(_ShopTripsLoading value)? loading,
    TResult Function(_ShopTripsSuccess value)? success,
    TResult Function(_ShopTripsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ShopTripsInitial implements ShopTripsState {
  const factory _ShopTripsInitial() = _$_ShopTripsInitial;
}

/// @nodoc
abstract class _$$_ShopTripsLoadingCopyWith<$Res> {
  factory _$$_ShopTripsLoadingCopyWith(
          _$_ShopTripsLoading value, $Res Function(_$_ShopTripsLoading) then) =
      __$$_ShopTripsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShopTripsLoadingCopyWithImpl<$Res>
    extends _$ShopTripsStateCopyWithImpl<$Res, _$_ShopTripsLoading>
    implements _$$_ShopTripsLoadingCopyWith<$Res> {
  __$$_ShopTripsLoadingCopyWithImpl(
      _$_ShopTripsLoading _value, $Res Function(_$_ShopTripsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShopTripsLoading implements _ShopTripsLoading {
  const _$_ShopTripsLoading();

  @override
  String toString() {
    return 'ShopTripsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShopTripsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ShopDispatchProducts records, bool hasReachedMax, String? query)
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
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
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
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
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
    required TResult Function(_ShopTripsInitial value) initial,
    required TResult Function(_ShopTripsLoading value) loading,
    required TResult Function(_ShopTripsSuccess value) success,
    required TResult Function(_ShopTripsFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopTripsInitial value)? initial,
    TResult? Function(_ShopTripsLoading value)? loading,
    TResult? Function(_ShopTripsSuccess value)? success,
    TResult? Function(_ShopTripsFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopTripsInitial value)? initial,
    TResult Function(_ShopTripsLoading value)? loading,
    TResult Function(_ShopTripsSuccess value)? success,
    TResult Function(_ShopTripsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ShopTripsLoading implements ShopTripsState {
  const factory _ShopTripsLoading() = _$_ShopTripsLoading;
}

/// @nodoc
abstract class _$$_ShopTripsSuccessCopyWith<$Res> {
  factory _$$_ShopTripsSuccessCopyWith(
          _$_ShopTripsSuccess value, $Res Function(_$_ShopTripsSuccess) then) =
      __$$_ShopTripsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ShopDispatchProducts records, bool hasReachedMax, String? query});

  $ShopDispatchProductsCopyWith<$Res> get records;
}

/// @nodoc
class __$$_ShopTripsSuccessCopyWithImpl<$Res>
    extends _$ShopTripsStateCopyWithImpl<$Res, _$_ShopTripsSuccess>
    implements _$$_ShopTripsSuccessCopyWith<$Res> {
  __$$_ShopTripsSuccessCopyWithImpl(
      _$_ShopTripsSuccess _value, $Res Function(_$_ShopTripsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_ShopTripsSuccess(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as ShopDispatchProducts,
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

  @override
  @pragma('vm:prefer-inline')
  $ShopDispatchProductsCopyWith<$Res> get records {
    return $ShopDispatchProductsCopyWith<$Res>(_value.records, (value) {
      return _then(_value.copyWith(records: value));
    });
  }
}

/// @nodoc

class _$_ShopTripsSuccess implements _ShopTripsSuccess {
  const _$_ShopTripsSuccess(
      {required this.records, required this.hasReachedMax, this.query});

  @override
  final ShopDispatchProducts records;
  @override
  final bool hasReachedMax;
  @override
  final String? query;

  @override
  String toString() {
    return 'ShopTripsState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopTripsSuccess &&
            (identical(other.records, records) || other.records == records) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, records, hasReachedMax, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopTripsSuccessCopyWith<_$_ShopTripsSuccess> get copyWith =>
      __$$_ShopTripsSuccessCopyWithImpl<_$_ShopTripsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ShopDispatchProducts records, bool hasReachedMax, String? query)
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
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
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
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
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
    required TResult Function(_ShopTripsInitial value) initial,
    required TResult Function(_ShopTripsLoading value) loading,
    required TResult Function(_ShopTripsSuccess value) success,
    required TResult Function(_ShopTripsFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopTripsInitial value)? initial,
    TResult? Function(_ShopTripsLoading value)? loading,
    TResult? Function(_ShopTripsSuccess value)? success,
    TResult? Function(_ShopTripsFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopTripsInitial value)? initial,
    TResult Function(_ShopTripsLoading value)? loading,
    TResult Function(_ShopTripsSuccess value)? success,
    TResult Function(_ShopTripsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ShopTripsSuccess implements ShopTripsState {
  const factory _ShopTripsSuccess(
      {required final ShopDispatchProducts records,
      required final bool hasReachedMax,
      final String? query}) = _$_ShopTripsSuccess;

  ShopDispatchProducts get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_ShopTripsSuccessCopyWith<_$_ShopTripsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShopTripsFailureCopyWith<$Res> {
  factory _$$_ShopTripsFailureCopyWith(
          _$_ShopTripsFailure value, $Res Function(_$_ShopTripsFailure) then) =
      __$$_ShopTripsFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ShopTripsFailureCopyWithImpl<$Res>
    extends _$ShopTripsStateCopyWithImpl<$Res, _$_ShopTripsFailure>
    implements _$$_ShopTripsFailureCopyWith<$Res> {
  __$$_ShopTripsFailureCopyWithImpl(
      _$_ShopTripsFailure _value, $Res Function(_$_ShopTripsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_ShopTripsFailure(
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

class _$_ShopTripsFailure implements _ShopTripsFailure {
  const _$_ShopTripsFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ShopTripsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopTripsFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopTripsFailureCopyWith<_$_ShopTripsFailure> get copyWith =>
      __$$_ShopTripsFailureCopyWithImpl<_$_ShopTripsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ShopDispatchProducts records, bool hasReachedMax, String? query)
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
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
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
            ShopDispatchProducts records, bool hasReachedMax, String? query)?
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
    required TResult Function(_ShopTripsInitial value) initial,
    required TResult Function(_ShopTripsLoading value) loading,
    required TResult Function(_ShopTripsSuccess value) success,
    required TResult Function(_ShopTripsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopTripsInitial value)? initial,
    TResult? Function(_ShopTripsLoading value)? loading,
    TResult? Function(_ShopTripsSuccess value)? success,
    TResult? Function(_ShopTripsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopTripsInitial value)? initial,
    TResult Function(_ShopTripsLoading value)? loading,
    TResult Function(_ShopTripsSuccess value)? success,
    TResult Function(_ShopTripsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ShopTripsFailure implements ShopTripsState {
  const factory _ShopTripsFailure(final Failure failure) = _$_ShopTripsFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ShopTripsFailureCopyWith<_$_ShopTripsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

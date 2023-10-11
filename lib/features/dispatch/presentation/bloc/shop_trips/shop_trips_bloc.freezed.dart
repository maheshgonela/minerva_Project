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
abstract class _$$fetchInitialDispatchOrderedproductImplCopyWith<$Res>
    implements $ShopTripsEventCopyWith<$Res> {
  factory _$$fetchInitialDispatchOrderedproductImplCopyWith(
          _$fetchInitialDispatchOrderedproductImpl value,
          $Res Function(_$fetchInitialDispatchOrderedproductImpl) then) =
      __$$fetchInitialDispatchOrderedproductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId, bool fromDispatchSection});
}

/// @nodoc
class __$$fetchInitialDispatchOrderedproductImplCopyWithImpl<$Res>
    extends _$ShopTripsEventCopyWithImpl<$Res,
        _$fetchInitialDispatchOrderedproductImpl>
    implements _$$fetchInitialDispatchOrderedproductImplCopyWith<$Res> {
  __$$fetchInitialDispatchOrderedproductImplCopyWithImpl(
      _$fetchInitialDispatchOrderedproductImpl _value,
      $Res Function(_$fetchInitialDispatchOrderedproductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
    Object? fromDispatchSection = null,
  }) {
    return _then(_$fetchInitialDispatchOrderedproductImpl(
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

class _$fetchInitialDispatchOrderedproductImpl
    implements _fetchInitialDispatchOrderedproduct {
  const _$fetchInitialDispatchOrderedproductImpl(this.purchaseOrderId,
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
            other is _$fetchInitialDispatchOrderedproductImpl &&
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
  _$$fetchInitialDispatchOrderedproductImplCopyWith<
          _$fetchInitialDispatchOrderedproductImpl>
      get copyWith => __$$fetchInitialDispatchOrderedproductImplCopyWithImpl<
          _$fetchInitialDispatchOrderedproductImpl>(this, _$identity);

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
      _$fetchInitialDispatchOrderedproductImpl;

  @override
  String get purchaseOrderId;
  @override
  bool get fromDispatchSection;
  @override
  @JsonKey(ignore: true)
  _$$fetchInitialDispatchOrderedproductImplCopyWith<
          _$fetchInitialDispatchOrderedproductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$fetchMoreDispatchOrderedproductImplCopyWith<$Res>
    implements $ShopTripsEventCopyWith<$Res> {
  factory _$$fetchMoreDispatchOrderedproductImplCopyWith(
          _$fetchMoreDispatchOrderedproductImpl value,
          $Res Function(_$fetchMoreDispatchOrderedproductImpl) then) =
      __$$fetchMoreDispatchOrderedproductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purchaseOrderId, bool fromDispatchSection});
}

/// @nodoc
class __$$fetchMoreDispatchOrderedproductImplCopyWithImpl<$Res>
    extends _$ShopTripsEventCopyWithImpl<$Res,
        _$fetchMoreDispatchOrderedproductImpl>
    implements _$$fetchMoreDispatchOrderedproductImplCopyWith<$Res> {
  __$$fetchMoreDispatchOrderedproductImplCopyWithImpl(
      _$fetchMoreDispatchOrderedproductImpl _value,
      $Res Function(_$fetchMoreDispatchOrderedproductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
    Object? fromDispatchSection = null,
  }) {
    return _then(_$fetchMoreDispatchOrderedproductImpl(
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

class _$fetchMoreDispatchOrderedproductImpl
    implements _fetchMoreDispatchOrderedproduct {
  const _$fetchMoreDispatchOrderedproductImpl(this.purchaseOrderId,
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
            other is _$fetchMoreDispatchOrderedproductImpl &&
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
  _$$fetchMoreDispatchOrderedproductImplCopyWith<
          _$fetchMoreDispatchOrderedproductImpl>
      get copyWith => __$$fetchMoreDispatchOrderedproductImplCopyWithImpl<
          _$fetchMoreDispatchOrderedproductImpl>(this, _$identity);

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
      _$fetchMoreDispatchOrderedproductImpl;

  @override
  String get purchaseOrderId;
  @override
  bool get fromDispatchSection;
  @override
  @JsonKey(ignore: true)
  _$$fetchMoreDispatchOrderedproductImplCopyWith<
          _$fetchMoreDispatchOrderedproductImpl>
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
abstract class _$$ShopTripsInitialImplCopyWith<$Res> {
  factory _$$ShopTripsInitialImplCopyWith(_$ShopTripsInitialImpl value,
          $Res Function(_$ShopTripsInitialImpl) then) =
      __$$ShopTripsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShopTripsInitialImplCopyWithImpl<$Res>
    extends _$ShopTripsStateCopyWithImpl<$Res, _$ShopTripsInitialImpl>
    implements _$$ShopTripsInitialImplCopyWith<$Res> {
  __$$ShopTripsInitialImplCopyWithImpl(_$ShopTripsInitialImpl _value,
      $Res Function(_$ShopTripsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShopTripsInitialImpl implements _ShopTripsInitial {
  const _$ShopTripsInitialImpl();

  @override
  String toString() {
    return 'ShopTripsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShopTripsInitialImpl);
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
  const factory _ShopTripsInitial() = _$ShopTripsInitialImpl;
}

/// @nodoc
abstract class _$$ShopTripsLoadingImplCopyWith<$Res> {
  factory _$$ShopTripsLoadingImplCopyWith(_$ShopTripsLoadingImpl value,
          $Res Function(_$ShopTripsLoadingImpl) then) =
      __$$ShopTripsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShopTripsLoadingImplCopyWithImpl<$Res>
    extends _$ShopTripsStateCopyWithImpl<$Res, _$ShopTripsLoadingImpl>
    implements _$$ShopTripsLoadingImplCopyWith<$Res> {
  __$$ShopTripsLoadingImplCopyWithImpl(_$ShopTripsLoadingImpl _value,
      $Res Function(_$ShopTripsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShopTripsLoadingImpl implements _ShopTripsLoading {
  const _$ShopTripsLoadingImpl();

  @override
  String toString() {
    return 'ShopTripsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShopTripsLoadingImpl);
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
  const factory _ShopTripsLoading() = _$ShopTripsLoadingImpl;
}

/// @nodoc
abstract class _$$ShopTripsSuccessImplCopyWith<$Res> {
  factory _$$ShopTripsSuccessImplCopyWith(_$ShopTripsSuccessImpl value,
          $Res Function(_$ShopTripsSuccessImpl) then) =
      __$$ShopTripsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShopDispatchProducts records, bool hasReachedMax, String? query});

  $ShopDispatchProductsCopyWith<$Res> get records;
}

/// @nodoc
class __$$ShopTripsSuccessImplCopyWithImpl<$Res>
    extends _$ShopTripsStateCopyWithImpl<$Res, _$ShopTripsSuccessImpl>
    implements _$$ShopTripsSuccessImplCopyWith<$Res> {
  __$$ShopTripsSuccessImplCopyWithImpl(_$ShopTripsSuccessImpl _value,
      $Res Function(_$ShopTripsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$ShopTripsSuccessImpl(
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

class _$ShopTripsSuccessImpl implements _ShopTripsSuccess {
  const _$ShopTripsSuccessImpl(
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
            other is _$ShopTripsSuccessImpl &&
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
  _$$ShopTripsSuccessImplCopyWith<_$ShopTripsSuccessImpl> get copyWith =>
      __$$ShopTripsSuccessImplCopyWithImpl<_$ShopTripsSuccessImpl>(
          this, _$identity);

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
      final String? query}) = _$ShopTripsSuccessImpl;

  ShopDispatchProducts get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$ShopTripsSuccessImplCopyWith<_$ShopTripsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShopTripsFailureImplCopyWith<$Res> {
  factory _$$ShopTripsFailureImplCopyWith(_$ShopTripsFailureImpl value,
          $Res Function(_$ShopTripsFailureImpl) then) =
      __$$ShopTripsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ShopTripsFailureImplCopyWithImpl<$Res>
    extends _$ShopTripsStateCopyWithImpl<$Res, _$ShopTripsFailureImpl>
    implements _$$ShopTripsFailureImplCopyWith<$Res> {
  __$$ShopTripsFailureImplCopyWithImpl(_$ShopTripsFailureImpl _value,
      $Res Function(_$ShopTripsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ShopTripsFailureImpl(
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

class _$ShopTripsFailureImpl implements _ShopTripsFailure {
  const _$ShopTripsFailureImpl(this.failure);

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
            other is _$ShopTripsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopTripsFailureImplCopyWith<_$ShopTripsFailureImpl> get copyWith =>
      __$$ShopTripsFailureImplCopyWithImpl<_$ShopTripsFailureImpl>(
          this, _$identity);

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
  const factory _ShopTripsFailure(final Failure failure) =
      _$ShopTripsFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ShopTripsFailureImplCopyWith<_$ShopTripsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

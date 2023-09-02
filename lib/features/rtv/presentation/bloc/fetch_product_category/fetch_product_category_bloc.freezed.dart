// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_product_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchProductCategoryEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialProductCategory,
    required TResult Function(String? query) fetchMoreProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialProductCategory,
    TResult? Function(String? query)? fetchMoreProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialProductCategory,
    TResult Function(String? query)? fetchMoreProductCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProductCategory value)
        fetchInitialProductCategory,
    required TResult Function(_FetchMoreProductCategory value)
        fetchMoreProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProductCategory value)?
        fetchInitialProductCategory,
    TResult? Function(_FetchMoreProductCategory value)?
        fetchMoreProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProductCategory value)?
        fetchInitialProductCategory,
    TResult Function(_FetchMoreProductCategory value)? fetchMoreProductCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchProductCategoryEventCopyWith<FetchProductCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchProductCategoryEventCopyWith<$Res> {
  factory $FetchProductCategoryEventCopyWith(FetchProductCategoryEvent value,
          $Res Function(FetchProductCategoryEvent) then) =
      _$FetchProductCategoryEventCopyWithImpl<$Res, FetchProductCategoryEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$FetchProductCategoryEventCopyWithImpl<$Res,
        $Val extends FetchProductCategoryEvent>
    implements $FetchProductCategoryEventCopyWith<$Res> {
  _$FetchProductCategoryEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_FetchInitialProductCategoryCopyWith<$Res>
    implements $FetchProductCategoryEventCopyWith<$Res> {
  factory _$$_FetchInitialProductCategoryCopyWith(
          _$_FetchInitialProductCategory value,
          $Res Function(_$_FetchInitialProductCategory) then) =
      __$$_FetchInitialProductCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_FetchInitialProductCategoryCopyWithImpl<$Res>
    extends _$FetchProductCategoryEventCopyWithImpl<$Res,
        _$_FetchInitialProductCategory>
    implements _$$_FetchInitialProductCategoryCopyWith<$Res> {
  __$$_FetchInitialProductCategoryCopyWithImpl(
      _$_FetchInitialProductCategory _value,
      $Res Function(_$_FetchInitialProductCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_FetchInitialProductCategory(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchInitialProductCategory implements _FetchInitialProductCategory {
  const _$_FetchInitialProductCategory({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchProductCategoryEvent.fetchInitialProductCategory(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchInitialProductCategory &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchInitialProductCategoryCopyWith<_$_FetchInitialProductCategory>
      get copyWith => __$$_FetchInitialProductCategoryCopyWithImpl<
          _$_FetchInitialProductCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialProductCategory,
    required TResult Function(String? query) fetchMoreProductCategory,
  }) {
    return fetchInitialProductCategory(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialProductCategory,
    TResult? Function(String? query)? fetchMoreProductCategory,
  }) {
    return fetchInitialProductCategory?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialProductCategory,
    TResult Function(String? query)? fetchMoreProductCategory,
    required TResult orElse(),
  }) {
    if (fetchInitialProductCategory != null) {
      return fetchInitialProductCategory(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProductCategory value)
        fetchInitialProductCategory,
    required TResult Function(_FetchMoreProductCategory value)
        fetchMoreProductCategory,
  }) {
    return fetchInitialProductCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProductCategory value)?
        fetchInitialProductCategory,
    TResult? Function(_FetchMoreProductCategory value)?
        fetchMoreProductCategory,
  }) {
    return fetchInitialProductCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProductCategory value)?
        fetchInitialProductCategory,
    TResult Function(_FetchMoreProductCategory value)? fetchMoreProductCategory,
    required TResult orElse(),
  }) {
    if (fetchInitialProductCategory != null) {
      return fetchInitialProductCategory(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialProductCategory
    implements FetchProductCategoryEvent {
  const factory _FetchInitialProductCategory({final String? query}) =
      _$_FetchInitialProductCategory;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchInitialProductCategoryCopyWith<_$_FetchInitialProductCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchMoreProductCategoryCopyWith<$Res>
    implements $FetchProductCategoryEventCopyWith<$Res> {
  factory _$$_FetchMoreProductCategoryCopyWith(
          _$_FetchMoreProductCategory value,
          $Res Function(_$_FetchMoreProductCategory) then) =
      __$$_FetchMoreProductCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_FetchMoreProductCategoryCopyWithImpl<$Res>
    extends _$FetchProductCategoryEventCopyWithImpl<$Res,
        _$_FetchMoreProductCategory>
    implements _$$_FetchMoreProductCategoryCopyWith<$Res> {
  __$$_FetchMoreProductCategoryCopyWithImpl(_$_FetchMoreProductCategory _value,
      $Res Function(_$_FetchMoreProductCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_FetchMoreProductCategory(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchMoreProductCategory implements _FetchMoreProductCategory {
  const _$_FetchMoreProductCategory({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FetchProductCategoryEvent.fetchMoreProductCategory(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchMoreProductCategory &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchMoreProductCategoryCopyWith<_$_FetchMoreProductCategory>
      get copyWith => __$$_FetchMoreProductCategoryCopyWithImpl<
          _$_FetchMoreProductCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) fetchInitialProductCategory,
    required TResult Function(String? query) fetchMoreProductCategory,
  }) {
    return fetchMoreProductCategory(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? fetchInitialProductCategory,
    TResult? Function(String? query)? fetchMoreProductCategory,
  }) {
    return fetchMoreProductCategory?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? fetchInitialProductCategory,
    TResult Function(String? query)? fetchMoreProductCategory,
    required TResult orElse(),
  }) {
    if (fetchMoreProductCategory != null) {
      return fetchMoreProductCategory(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProductCategory value)
        fetchInitialProductCategory,
    required TResult Function(_FetchMoreProductCategory value)
        fetchMoreProductCategory,
  }) {
    return fetchMoreProductCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProductCategory value)?
        fetchInitialProductCategory,
    TResult? Function(_FetchMoreProductCategory value)?
        fetchMoreProductCategory,
  }) {
    return fetchMoreProductCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProductCategory value)?
        fetchInitialProductCategory,
    TResult Function(_FetchMoreProductCategory value)? fetchMoreProductCategory,
    required TResult orElse(),
  }) {
    if (fetchMoreProductCategory != null) {
      return fetchMoreProductCategory(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreProductCategory implements FetchProductCategoryEvent {
  const factory _FetchMoreProductCategory({final String? query}) =
      _$_FetchMoreProductCategory;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_FetchMoreProductCategoryCopyWith<_$_FetchMoreProductCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchProductCategoryState {
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
    required TResult Function(_FetchProductCategoryInitial value) initial,
    required TResult Function(_FetchProductCategoryLoading value) loading,
    required TResult Function(_FetchProductCategorySuccess value) success,
    required TResult Function(_FetchProductCategoryFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductCategoryInitial value)? initial,
    TResult? Function(_FetchProductCategoryLoading value)? loading,
    TResult? Function(_FetchProductCategorySuccess value)? success,
    TResult? Function(_FetchProductCategoryFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategoryInitial value)? initial,
    TResult Function(_FetchProductCategoryLoading value)? loading,
    TResult Function(_FetchProductCategorySuccess value)? success,
    TResult Function(_FetchProductCategoryFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchProductCategoryStateCopyWith<$Res> {
  factory $FetchProductCategoryStateCopyWith(FetchProductCategoryState value,
          $Res Function(FetchProductCategoryState) then) =
      _$FetchProductCategoryStateCopyWithImpl<$Res, FetchProductCategoryState>;
}

/// @nodoc
class _$FetchProductCategoryStateCopyWithImpl<$Res,
        $Val extends FetchProductCategoryState>
    implements $FetchProductCategoryStateCopyWith<$Res> {
  _$FetchProductCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchProductCategoryInitialCopyWith<$Res> {
  factory _$$_FetchProductCategoryInitialCopyWith(
          _$_FetchProductCategoryInitial value,
          $Res Function(_$_FetchProductCategoryInitial) then) =
      __$$_FetchProductCategoryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchProductCategoryInitialCopyWithImpl<$Res>
    extends _$FetchProductCategoryStateCopyWithImpl<$Res,
        _$_FetchProductCategoryInitial>
    implements _$$_FetchProductCategoryInitialCopyWith<$Res> {
  __$$_FetchProductCategoryInitialCopyWithImpl(
      _$_FetchProductCategoryInitial _value,
      $Res Function(_$_FetchProductCategoryInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchProductCategoryInitial implements _FetchProductCategoryInitial {
  const _$_FetchProductCategoryInitial();

  @override
  String toString() {
    return 'FetchProductCategoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchProductCategoryInitial);
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
    required TResult Function(_FetchProductCategoryInitial value) initial,
    required TResult Function(_FetchProductCategoryLoading value) loading,
    required TResult Function(_FetchProductCategorySuccess value) success,
    required TResult Function(_FetchProductCategoryFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductCategoryInitial value)? initial,
    TResult? Function(_FetchProductCategoryLoading value)? loading,
    TResult? Function(_FetchProductCategorySuccess value)? success,
    TResult? Function(_FetchProductCategoryFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategoryInitial value)? initial,
    TResult Function(_FetchProductCategoryLoading value)? loading,
    TResult Function(_FetchProductCategorySuccess value)? success,
    TResult Function(_FetchProductCategoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchProductCategoryInitial
    implements FetchProductCategoryState {
  const factory _FetchProductCategoryInitial() = _$_FetchProductCategoryInitial;
}

/// @nodoc
abstract class _$$_FetchProductCategoryLoadingCopyWith<$Res> {
  factory _$$_FetchProductCategoryLoadingCopyWith(
          _$_FetchProductCategoryLoading value,
          $Res Function(_$_FetchProductCategoryLoading) then) =
      __$$_FetchProductCategoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchProductCategoryLoadingCopyWithImpl<$Res>
    extends _$FetchProductCategoryStateCopyWithImpl<$Res,
        _$_FetchProductCategoryLoading>
    implements _$$_FetchProductCategoryLoadingCopyWith<$Res> {
  __$$_FetchProductCategoryLoadingCopyWithImpl(
      _$_FetchProductCategoryLoading _value,
      $Res Function(_$_FetchProductCategoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchProductCategoryLoading implements _FetchProductCategoryLoading {
  const _$_FetchProductCategoryLoading();

  @override
  String toString() {
    return 'FetchProductCategoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchProductCategoryLoading);
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
    required TResult Function(_FetchProductCategoryInitial value) initial,
    required TResult Function(_FetchProductCategoryLoading value) loading,
    required TResult Function(_FetchProductCategorySuccess value) success,
    required TResult Function(_FetchProductCategoryFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductCategoryInitial value)? initial,
    TResult? Function(_FetchProductCategoryLoading value)? loading,
    TResult? Function(_FetchProductCategorySuccess value)? success,
    TResult? Function(_FetchProductCategoryFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategoryInitial value)? initial,
    TResult Function(_FetchProductCategoryLoading value)? loading,
    TResult Function(_FetchProductCategorySuccess value)? success,
    TResult Function(_FetchProductCategoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchProductCategoryLoading
    implements FetchProductCategoryState {
  const factory _FetchProductCategoryLoading() = _$_FetchProductCategoryLoading;
}

/// @nodoc
abstract class _$$_FetchProductCategorySuccessCopyWith<$Res> {
  factory _$$_FetchProductCategorySuccessCopyWith(
          _$_FetchProductCategorySuccess value,
          $Res Function(_$_FetchProductCategorySuccess) then) =
      __$$_FetchProductCategorySuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<IdName> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$_FetchProductCategorySuccessCopyWithImpl<$Res>
    extends _$FetchProductCategoryStateCopyWithImpl<$Res,
        _$_FetchProductCategorySuccess>
    implements _$$_FetchProductCategorySuccessCopyWith<$Res> {
  __$$_FetchProductCategorySuccessCopyWithImpl(
      _$_FetchProductCategorySuccess _value,
      $Res Function(_$_FetchProductCategorySuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_FetchProductCategorySuccess(
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

class _$_FetchProductCategorySuccess implements _FetchProductCategorySuccess {
  const _$_FetchProductCategorySuccess(
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
    return 'FetchProductCategoryState.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchProductCategorySuccess &&
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
  _$$_FetchProductCategorySuccessCopyWith<_$_FetchProductCategorySuccess>
      get copyWith => __$$_FetchProductCategorySuccessCopyWithImpl<
          _$_FetchProductCategorySuccess>(this, _$identity);

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
    required TResult Function(_FetchProductCategoryInitial value) initial,
    required TResult Function(_FetchProductCategoryLoading value) loading,
    required TResult Function(_FetchProductCategorySuccess value) success,
    required TResult Function(_FetchProductCategoryFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductCategoryInitial value)? initial,
    TResult? Function(_FetchProductCategoryLoading value)? loading,
    TResult? Function(_FetchProductCategorySuccess value)? success,
    TResult? Function(_FetchProductCategoryFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategoryInitial value)? initial,
    TResult Function(_FetchProductCategoryLoading value)? loading,
    TResult Function(_FetchProductCategorySuccess value)? success,
    TResult Function(_FetchProductCategoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchProductCategorySuccess
    implements FetchProductCategoryState {
  const factory _FetchProductCategorySuccess(
      {required final List<IdName> records,
      required final bool hasReachedMax,
      final String? query}) = _$_FetchProductCategorySuccess;

  List<IdName> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_FetchProductCategorySuccessCopyWith<_$_FetchProductCategorySuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchProductCategoryFailureCopyWith<$Res> {
  factory _$$_FetchProductCategoryFailureCopyWith(
          _$_FetchProductCategoryFailure value,
          $Res Function(_$_FetchProductCategoryFailure) then) =
      __$$_FetchProductCategoryFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchProductCategoryFailureCopyWithImpl<$Res>
    extends _$FetchProductCategoryStateCopyWithImpl<$Res,
        _$_FetchProductCategoryFailure>
    implements _$$_FetchProductCategoryFailureCopyWith<$Res> {
  __$$_FetchProductCategoryFailureCopyWithImpl(
      _$_FetchProductCategoryFailure _value,
      $Res Function(_$_FetchProductCategoryFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchProductCategoryFailure(
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

class _$_FetchProductCategoryFailure implements _FetchProductCategoryFailure {
  const _$_FetchProductCategoryFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchProductCategoryState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchProductCategoryFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchProductCategoryFailureCopyWith<_$_FetchProductCategoryFailure>
      get copyWith => __$$_FetchProductCategoryFailureCopyWithImpl<
          _$_FetchProductCategoryFailure>(this, _$identity);

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
    required TResult Function(_FetchProductCategoryInitial value) initial,
    required TResult Function(_FetchProductCategoryLoading value) loading,
    required TResult Function(_FetchProductCategorySuccess value) success,
    required TResult Function(_FetchProductCategoryFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductCategoryInitial value)? initial,
    TResult? Function(_FetchProductCategoryLoading value)? loading,
    TResult? Function(_FetchProductCategorySuccess value)? success,
    TResult? Function(_FetchProductCategoryFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategoryInitial value)? initial,
    TResult Function(_FetchProductCategoryLoading value)? loading,
    TResult Function(_FetchProductCategorySuccess value)? success,
    TResult Function(_FetchProductCategoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchProductCategoryFailure
    implements FetchProductCategoryState {
  const factory _FetchProductCategoryFailure(final Failure failure) =
      _$_FetchProductCategoryFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FetchProductCategoryFailureCopyWith<_$_FetchProductCategoryFailure>
      get copyWith => throw _privateConstructorUsedError;
}

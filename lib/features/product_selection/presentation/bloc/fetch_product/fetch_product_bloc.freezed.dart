// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchProductEvent {
  String? get query => throw _privateConstructorUsedError;
  List<String>? get selectedCategorys => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<String>? selectedCategorys, String? barCode)
        fetchInitialProduct,
    required TResult Function(String? query, List<String>? selectedCategorys)
        fetchMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? query, List<String>? selectedCategorys, String? barCode)?
        fetchInitialProduct,
    TResult? Function(String? query, List<String>? selectedCategorys)?
        fetchMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? query, List<String>? selectedCategorys, String? barCode)?
        fetchInitialProduct,
    TResult Function(String? query, List<String>? selectedCategorys)?
        fetchMoreProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProduct value) fetchInitialProduct,
    required TResult Function(_FetchMoreProduct value) fetchMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult? Function(_FetchMoreProduct value)? fetchMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult Function(_FetchMoreProduct value)? fetchMoreProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchProductEventCopyWith<FetchProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchProductEventCopyWith<$Res> {
  factory $FetchProductEventCopyWith(
          FetchProductEvent value, $Res Function(FetchProductEvent) then) =
      _$FetchProductEventCopyWithImpl<$Res, FetchProductEvent>;
  @useResult
  $Res call({String? query, List<String>? selectedCategorys});
}

/// @nodoc
class _$FetchProductEventCopyWithImpl<$Res, $Val extends FetchProductEvent>
    implements $FetchProductEventCopyWith<$Res> {
  _$FetchProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? selectedCategorys = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategorys: freezed == selectedCategorys
          ? _value.selectedCategorys
          : selectedCategorys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchInitialProductImplCopyWith<$Res>
    implements $FetchProductEventCopyWith<$Res> {
  factory _$$FetchInitialProductImplCopyWith(_$FetchInitialProductImpl value,
          $Res Function(_$FetchInitialProductImpl) then) =
      __$$FetchInitialProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, List<String>? selectedCategorys, String? barCode});
}

/// @nodoc
class __$$FetchInitialProductImplCopyWithImpl<$Res>
    extends _$FetchProductEventCopyWithImpl<$Res, _$FetchInitialProductImpl>
    implements _$$FetchInitialProductImplCopyWith<$Res> {
  __$$FetchInitialProductImplCopyWithImpl(_$FetchInitialProductImpl _value,
      $Res Function(_$FetchInitialProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? selectedCategorys = freezed,
    Object? barCode = freezed,
  }) {
    return _then(_$FetchInitialProductImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategorys: freezed == selectedCategorys
          ? _value._selectedCategorys
          : selectedCategorys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      barCode: freezed == barCode
          ? _value.barCode
          : barCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchInitialProductImpl implements _FetchInitialProduct {
  const _$FetchInitialProductImpl(
      {this.query, final List<String>? selectedCategorys, this.barCode})
      : _selectedCategorys = selectedCategorys;

  @override
  final String? query;
  final List<String>? _selectedCategorys;
  @override
  List<String>? get selectedCategorys {
    final value = _selectedCategorys;
    if (value == null) return null;
    if (_selectedCategorys is EqualUnmodifiableListView)
      return _selectedCategorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? barCode;

  @override
  String toString() {
    return 'FetchProductEvent.fetchInitialProduct(query: $query, selectedCategorys: $selectedCategorys, barCode: $barCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchInitialProductImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategorys, _selectedCategorys) &&
            (identical(other.barCode, barCode) || other.barCode == barCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query,
      const DeepCollectionEquality().hash(_selectedCategorys), barCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchInitialProductImplCopyWith<_$FetchInitialProductImpl> get copyWith =>
      __$$FetchInitialProductImplCopyWithImpl<_$FetchInitialProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<String>? selectedCategorys, String? barCode)
        fetchInitialProduct,
    required TResult Function(String? query, List<String>? selectedCategorys)
        fetchMoreProduct,
  }) {
    return fetchInitialProduct(query, selectedCategorys, barCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? query, List<String>? selectedCategorys, String? barCode)?
        fetchInitialProduct,
    TResult? Function(String? query, List<String>? selectedCategorys)?
        fetchMoreProduct,
  }) {
    return fetchInitialProduct?.call(query, selectedCategorys, barCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? query, List<String>? selectedCategorys, String? barCode)?
        fetchInitialProduct,
    TResult Function(String? query, List<String>? selectedCategorys)?
        fetchMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchInitialProduct != null) {
      return fetchInitialProduct(query, selectedCategorys, barCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProduct value) fetchInitialProduct,
    required TResult Function(_FetchMoreProduct value) fetchMoreProduct,
  }) {
    return fetchInitialProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult? Function(_FetchMoreProduct value)? fetchMoreProduct,
  }) {
    return fetchInitialProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult Function(_FetchMoreProduct value)? fetchMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchInitialProduct != null) {
      return fetchInitialProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchInitialProduct implements FetchProductEvent {
  const factory _FetchInitialProduct(
      {final String? query,
      final List<String>? selectedCategorys,
      final String? barCode}) = _$FetchInitialProductImpl;

  @override
  String? get query;
  @override
  List<String>? get selectedCategorys;
  String? get barCode;
  @override
  @JsonKey(ignore: true)
  _$$FetchInitialProductImplCopyWith<_$FetchInitialProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreProductImplCopyWith<$Res>
    implements $FetchProductEventCopyWith<$Res> {
  factory _$$FetchMoreProductImplCopyWith(_$FetchMoreProductImpl value,
          $Res Function(_$FetchMoreProductImpl) then) =
      __$$FetchMoreProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, List<String>? selectedCategorys});
}

/// @nodoc
class __$$FetchMoreProductImplCopyWithImpl<$Res>
    extends _$FetchProductEventCopyWithImpl<$Res, _$FetchMoreProductImpl>
    implements _$$FetchMoreProductImplCopyWith<$Res> {
  __$$FetchMoreProductImplCopyWithImpl(_$FetchMoreProductImpl _value,
      $Res Function(_$FetchMoreProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? selectedCategorys = freezed,
  }) {
    return _then(_$FetchMoreProductImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategorys: freezed == selectedCategorys
          ? _value._selectedCategorys
          : selectedCategorys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$FetchMoreProductImpl implements _FetchMoreProduct {
  const _$FetchMoreProductImpl(
      {this.query, final List<String>? selectedCategorys})
      : _selectedCategorys = selectedCategorys;

  @override
  final String? query;
  final List<String>? _selectedCategorys;
  @override
  List<String>? get selectedCategorys {
    final value = _selectedCategorys;
    if (value == null) return null;
    if (_selectedCategorys is EqualUnmodifiableListView)
      return _selectedCategorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchProductEvent.fetchMoreProduct(query: $query, selectedCategorys: $selectedCategorys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoreProductImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategorys, _selectedCategorys));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query,
      const DeepCollectionEquality().hash(_selectedCategorys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreProductImplCopyWith<_$FetchMoreProductImpl> get copyWith =>
      __$$FetchMoreProductImplCopyWithImpl<_$FetchMoreProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<String>? selectedCategorys, String? barCode)
        fetchInitialProduct,
    required TResult Function(String? query, List<String>? selectedCategorys)
        fetchMoreProduct,
  }) {
    return fetchMoreProduct(query, selectedCategorys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? query, List<String>? selectedCategorys, String? barCode)?
        fetchInitialProduct,
    TResult? Function(String? query, List<String>? selectedCategorys)?
        fetchMoreProduct,
  }) {
    return fetchMoreProduct?.call(query, selectedCategorys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? query, List<String>? selectedCategorys, String? barCode)?
        fetchInitialProduct,
    TResult Function(String? query, List<String>? selectedCategorys)?
        fetchMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchMoreProduct != null) {
      return fetchMoreProduct(query, selectedCategorys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInitialProduct value) fetchInitialProduct,
    required TResult Function(_FetchMoreProduct value) fetchMoreProduct,
  }) {
    return fetchMoreProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult? Function(_FetchMoreProduct value)? fetchMoreProduct,
  }) {
    return fetchMoreProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInitialProduct value)? fetchInitialProduct,
    TResult Function(_FetchMoreProduct value)? fetchMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchMoreProduct != null) {
      return fetchMoreProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreProduct implements FetchProductEvent {
  const factory _FetchMoreProduct(
      {final String? query,
      final List<String>? selectedCategorys}) = _$FetchMoreProductImpl;

  @override
  String? get query;
  @override
  List<String>? get selectedCategorys;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoreProductImplCopyWith<_$FetchMoreProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchProductStateCopyWith<$Res> {
  factory $FetchProductStateCopyWith(
          FetchProductState value, $Res Function(FetchProductState) then) =
      _$FetchProductStateCopyWithImpl<$Res, FetchProductState>;
}

/// @nodoc
class _$FetchProductStateCopyWithImpl<$Res, $Val extends FetchProductState>
    implements $FetchProductStateCopyWith<$Res> {
  _$FetchProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProductInitialImplCopyWith<$Res> {
  factory _$$FetchProductInitialImplCopyWith(_$FetchProductInitialImpl value,
          $Res Function(_$FetchProductInitialImpl) then) =
      __$$FetchProductInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProductInitialImplCopyWithImpl<$Res>
    extends _$FetchProductStateCopyWithImpl<$Res, _$FetchProductInitialImpl>
    implements _$$FetchProductInitialImplCopyWith<$Res> {
  __$$FetchProductInitialImplCopyWithImpl(_$FetchProductInitialImpl _value,
      $Res Function(_$FetchProductInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProductInitialImpl implements _FetchProductInitial {
  const _$FetchProductInitialImpl();

  @override
  String toString() {
    return 'FetchProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)
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
    TResult? Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
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
    TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
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
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchProductInitial implements FetchProductState {
  const factory _FetchProductInitial() = _$FetchProductInitialImpl;
}

/// @nodoc
abstract class _$$FetchProductLoadingImplCopyWith<$Res> {
  factory _$$FetchProductLoadingImplCopyWith(_$FetchProductLoadingImpl value,
          $Res Function(_$FetchProductLoadingImpl) then) =
      __$$FetchProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProductLoadingImplCopyWithImpl<$Res>
    extends _$FetchProductStateCopyWithImpl<$Res, _$FetchProductLoadingImpl>
    implements _$$FetchProductLoadingImplCopyWith<$Res> {
  __$$FetchProductLoadingImplCopyWithImpl(_$FetchProductLoadingImpl _value,
      $Res Function(_$FetchProductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProductLoadingImpl implements _FetchProductLoading {
  const _$FetchProductLoadingImpl();

  @override
  String toString() {
    return 'FetchProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)
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
    TResult? Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
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
    TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
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
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchProductLoading implements FetchProductState {
  const factory _FetchProductLoading() = _$FetchProductLoadingImpl;
}

/// @nodoc
abstract class _$$FetchProductSuccessImplCopyWith<$Res> {
  factory _$$FetchProductSuccessImplCopyWith(_$FetchProductSuccessImpl value,
          $Res Function(_$FetchProductSuccessImpl) then) =
      __$$FetchProductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Product> records,
      bool hasReachedMax,
      List<String> categories,
      String? query,
      String? barCode});
}

/// @nodoc
class __$$FetchProductSuccessImplCopyWithImpl<$Res>
    extends _$FetchProductStateCopyWithImpl<$Res, _$FetchProductSuccessImpl>
    implements _$$FetchProductSuccessImplCopyWith<$Res> {
  __$$FetchProductSuccessImplCopyWithImpl(_$FetchProductSuccessImpl _value,
      $Res Function(_$FetchProductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? categories = null,
    Object? query = freezed,
    Object? barCode = freezed,
  }) {
    return _then(_$FetchProductSuccessImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      barCode: freezed == barCode
          ? _value.barCode
          : barCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchProductSuccessImpl implements _FetchProductSuccess {
  const _$FetchProductSuccessImpl(
      {required final List<Product> records,
      required this.hasReachedMax,
      required final List<String> categories,
      this.query,
      this.barCode})
      : _records = records,
        _categories = categories;

  final List<Product> _records;
  @override
  List<Product> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final bool hasReachedMax;
  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? query;
  @override
  final String? barCode;

  @override
  String toString() {
    return 'FetchProductState.success(records: $records, hasReachedMax: $hasReachedMax, categories: $categories, query: $query, barCode: $barCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductSuccessImpl &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.barCode, barCode) || other.barCode == barCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      hasReachedMax,
      const DeepCollectionEquality().hash(_categories),
      query,
      barCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductSuccessImplCopyWith<_$FetchProductSuccessImpl> get copyWith =>
      __$$FetchProductSuccessImplCopyWithImpl<_$FetchProductSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(records, hasReachedMax, categories, query, barCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(records, hasReachedMax, categories, query, barCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(records, hasReachedMax, categories, query, barCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchProductSuccess implements FetchProductState {
  const factory _FetchProductSuccess(
      {required final List<Product> records,
      required final bool hasReachedMax,
      required final List<String> categories,
      final String? query,
      final String? barCode}) = _$FetchProductSuccessImpl;

  List<Product> get records;
  bool get hasReachedMax;
  List<String> get categories;
  String? get query;
  String? get barCode;
  @JsonKey(ignore: true)
  _$$FetchProductSuccessImplCopyWith<_$FetchProductSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductFailureImplCopyWith<$Res> {
  factory _$$FetchProductFailureImplCopyWith(_$FetchProductFailureImpl value,
          $Res Function(_$FetchProductFailureImpl) then) =
      __$$FetchProductFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FetchProductFailureImplCopyWithImpl<$Res>
    extends _$FetchProductStateCopyWithImpl<$Res, _$FetchProductFailureImpl>
    implements _$$FetchProductFailureImplCopyWith<$Res> {
  __$$FetchProductFailureImplCopyWithImpl(_$FetchProductFailureImpl _value,
      $Res Function(_$FetchProductFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FetchProductFailureImpl(
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

class _$FetchProductFailureImpl implements _FetchProductFailure {
  const _$FetchProductFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FetchProductState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductFailureImplCopyWith<_$FetchProductFailureImpl> get copyWith =>
      __$$FetchProductFailureImplCopyWithImpl<_$FetchProductFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)
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
    TResult? Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
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
    TResult Function(List<Product> records, bool hasReachedMax,
            List<String> categories, String? query, String? barCode)?
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
    required TResult Function(_FetchProductInitial value) initial,
    required TResult Function(_FetchProductLoading value) loading,
    required TResult Function(_FetchProductSuccess value) success,
    required TResult Function(_FetchProductFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductInitial value)? initial,
    TResult? Function(_FetchProductLoading value)? loading,
    TResult? Function(_FetchProductSuccess value)? success,
    TResult? Function(_FetchProductFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductInitial value)? initial,
    TResult Function(_FetchProductLoading value)? loading,
    TResult Function(_FetchProductSuccess value)? success,
    TResult Function(_FetchProductFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FetchProductFailure implements FetchProductState {
  const factory _FetchProductFailure(final Failure failure) =
      _$FetchProductFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FetchProductFailureImplCopyWith<_$FetchProductFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

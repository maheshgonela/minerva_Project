// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tablet_dispatch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabletDispatchState {
  IdName? get shop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabletDispatchStateCopyWith<TabletDispatchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabletDispatchStateCopyWith<$Res> {
  factory $TabletDispatchStateCopyWith(
          TabletDispatchState value, $Res Function(TabletDispatchState) then) =
      _$TabletDispatchStateCopyWithImpl<$Res, TabletDispatchState>;
  @useResult
  $Res call({IdName? shop});

  $IdNameCopyWith<$Res>? get shop;
}

/// @nodoc
class _$TabletDispatchStateCopyWithImpl<$Res, $Val extends TabletDispatchState>
    implements $TabletDispatchStateCopyWith<$Res> {
  _$TabletDispatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(_value.copyWith(
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as IdName?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdNameCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $IdNameCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TabletDispatchStateImplCopyWith<$Res>
    implements $TabletDispatchStateCopyWith<$Res> {
  factory _$$TabletDispatchStateImplCopyWith(_$TabletDispatchStateImpl value,
          $Res Function(_$TabletDispatchStateImpl) then) =
      __$$TabletDispatchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IdName? shop});

  @override
  $IdNameCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$TabletDispatchStateImplCopyWithImpl<$Res>
    extends _$TabletDispatchStateCopyWithImpl<$Res, _$TabletDispatchStateImpl>
    implements _$$TabletDispatchStateImplCopyWith<$Res> {
  __$$TabletDispatchStateImplCopyWithImpl(_$TabletDispatchStateImpl _value,
      $Res Function(_$TabletDispatchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(_$TabletDispatchStateImpl(
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as IdName?,
    ));
  }
}

/// @nodoc

class _$TabletDispatchStateImpl implements _TabletDispatchState {
  const _$TabletDispatchStateImpl({this.shop});

  @override
  final IdName? shop;

  @override
  String toString() {
    return 'TabletDispatchState(shop: $shop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabletDispatchStateImpl &&
            (identical(other.shop, shop) || other.shop == shop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabletDispatchStateImplCopyWith<_$TabletDispatchStateImpl> get copyWith =>
      __$$TabletDispatchStateImplCopyWithImpl<_$TabletDispatchStateImpl>(
          this, _$identity);
}

abstract class _TabletDispatchState implements TabletDispatchState {
  const factory _TabletDispatchState({final IdName? shop}) =
      _$TabletDispatchStateImpl;

  @override
  IdName? get shop;
  @override
  @JsonKey(ignore: true)
  _$$TabletDispatchStateImplCopyWith<_$TabletDispatchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

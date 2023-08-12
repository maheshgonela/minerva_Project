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
  Shop? get shop => throw _privateConstructorUsedError;

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
  $Res call({Shop? shop});

  $ShopCopyWith<$Res>? get shop;
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
              as Shop?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TabletDispatchStateCopyWith<$Res>
    implements $TabletDispatchStateCopyWith<$Res> {
  factory _$$_TabletDispatchStateCopyWith(_$_TabletDispatchState value,
          $Res Function(_$_TabletDispatchState) then) =
      __$$_TabletDispatchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Shop? shop});

  @override
  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$_TabletDispatchStateCopyWithImpl<$Res>
    extends _$TabletDispatchStateCopyWithImpl<$Res, _$_TabletDispatchState>
    implements _$$_TabletDispatchStateCopyWith<$Res> {
  __$$_TabletDispatchStateCopyWithImpl(_$_TabletDispatchState _value,
      $Res Function(_$_TabletDispatchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(_$_TabletDispatchState(
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop?,
    ));
  }
}

/// @nodoc

class _$_TabletDispatchState implements _TabletDispatchState {
  const _$_TabletDispatchState({this.shop});

  @override
  final Shop? shop;

  @override
  String toString() {
    return 'TabletDispatchState(shop: $shop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabletDispatchState &&
            (identical(other.shop, shop) || other.shop == shop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabletDispatchStateCopyWith<_$_TabletDispatchState> get copyWith =>
      __$$_TabletDispatchStateCopyWithImpl<_$_TabletDispatchState>(
          this, _$identity);
}

abstract class _TabletDispatchState implements TabletDispatchState {
  const factory _TabletDispatchState({final Shop? shop}) =
      _$_TabletDispatchState;

  @override
  Shop? get shop;
  @override
  @JsonKey(ignore: true)
  _$$_TabletDispatchStateCopyWith<_$_TabletDispatchState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthCheckRequestedCopyWith<$Res> {
  factory _$$_AuthCheckRequestedCopyWith(_$_AuthCheckRequested value,
          $Res Function(_$_AuthCheckRequested) then) =
      __$$_AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthCheckRequested>
    implements _$$_AuthCheckRequestedCopyWith<$Res> {
  __$$_AuthCheckRequestedCopyWithImpl(
      _$_AuthCheckRequested _value, $Res Function(_$_AuthCheckRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthCheckRequested
    with DiagnosticableTreeMixin
    implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.authCheckRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignedOut>
    implements _$$_SignedOutCopyWith<$Res> {
  __$$_SignedOutCopyWithImpl(
      _$_SignedOut _value, $Res Function(_$_SignedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignedOut with DiagnosticableTreeMixin implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthEvent {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authStateAuthenticated,
    required TResult Function() needAppUpdate,
    required TResult Function() authStateUnAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authStateAuthenticated,
    TResult? Function()? needAppUpdate,
    TResult? Function()? authStateUnAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authStateAuthenticated,
    TResult Function()? needAppUpdate,
    TResult Function()? authStateUnAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthStateAuthenticated value)
        authStateAuthenticated,
    required TResult Function(_NeedAppUpdate value) needAppUpdate,
    required TResult Function(_AuthStateUnAuthenticated value)
        authStateUnAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult? Function(_NeedAppUpdate value)? needAppUpdate,
    TResult? Function(_AuthStateUnAuthenticated value)?
        authStateUnAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult Function(_NeedAppUpdate value)? needAppUpdate,
    TResult Function(_AuthStateUnAuthenticated value)? authStateUnAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authStateAuthenticated,
    required TResult Function() needAppUpdate,
    required TResult Function() authStateUnAuthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authStateAuthenticated,
    TResult? Function()? needAppUpdate,
    TResult? Function()? authStateUnAuthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authStateAuthenticated,
    TResult Function()? needAppUpdate,
    TResult Function()? authStateUnAuthenticated,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthStateAuthenticated value)
        authStateAuthenticated,
    required TResult Function(_NeedAppUpdate value) needAppUpdate,
    required TResult Function(_AuthStateUnAuthenticated value)
        authStateUnAuthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult? Function(_NeedAppUpdate value)? needAppUpdate,
    TResult? Function(_AuthStateUnAuthenticated value)?
        authStateUnAuthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult Function(_NeedAppUpdate value)? needAppUpdate,
    TResult Function(_AuthStateUnAuthenticated value)? authStateUnAuthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_AuthStateAuthenticatedCopyWith<$Res> {
  factory _$$_AuthStateAuthenticatedCopyWith(_$_AuthStateAuthenticated value,
          $Res Function(_$_AuthStateAuthenticated) then) =
      __$$_AuthStateAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateAuthenticated>
    implements _$$_AuthStateAuthenticatedCopyWith<$Res> {
  __$$_AuthStateAuthenticatedCopyWithImpl(_$_AuthStateAuthenticated _value,
      $Res Function(_$_AuthStateAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateAuthenticated
    with DiagnosticableTreeMixin
    implements _AuthStateAuthenticated {
  const _$_AuthStateAuthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authStateAuthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthState.authStateAuthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authStateAuthenticated,
    required TResult Function() needAppUpdate,
    required TResult Function() authStateUnAuthenticated,
  }) {
    return authStateAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authStateAuthenticated,
    TResult? Function()? needAppUpdate,
    TResult? Function()? authStateUnAuthenticated,
  }) {
    return authStateAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authStateAuthenticated,
    TResult Function()? needAppUpdate,
    TResult Function()? authStateUnAuthenticated,
    required TResult orElse(),
  }) {
    if (authStateAuthenticated != null) {
      return authStateAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthStateAuthenticated value)
        authStateAuthenticated,
    required TResult Function(_NeedAppUpdate value) needAppUpdate,
    required TResult Function(_AuthStateUnAuthenticated value)
        authStateUnAuthenticated,
  }) {
    return authStateAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult? Function(_NeedAppUpdate value)? needAppUpdate,
    TResult? Function(_AuthStateUnAuthenticated value)?
        authStateUnAuthenticated,
  }) {
    return authStateAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult Function(_NeedAppUpdate value)? needAppUpdate,
    TResult Function(_AuthStateUnAuthenticated value)? authStateUnAuthenticated,
    required TResult orElse(),
  }) {
    if (authStateAuthenticated != null) {
      return authStateAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthStateAuthenticated implements AuthState {
  const factory _AuthStateAuthenticated() = _$_AuthStateAuthenticated;
}

/// @nodoc
abstract class _$$_NeedAppUpdateCopyWith<$Res> {
  factory _$$_NeedAppUpdateCopyWith(
          _$_NeedAppUpdate value, $Res Function(_$_NeedAppUpdate) then) =
      __$$_NeedAppUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NeedAppUpdateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_NeedAppUpdate>
    implements _$$_NeedAppUpdateCopyWith<$Res> {
  __$$_NeedAppUpdateCopyWithImpl(
      _$_NeedAppUpdate _value, $Res Function(_$_NeedAppUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NeedAppUpdate with DiagnosticableTreeMixin implements _NeedAppUpdate {
  const _$_NeedAppUpdate();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.needAppUpdate()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.needAppUpdate'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NeedAppUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authStateAuthenticated,
    required TResult Function() needAppUpdate,
    required TResult Function() authStateUnAuthenticated,
  }) {
    return needAppUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authStateAuthenticated,
    TResult? Function()? needAppUpdate,
    TResult? Function()? authStateUnAuthenticated,
  }) {
    return needAppUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authStateAuthenticated,
    TResult Function()? needAppUpdate,
    TResult Function()? authStateUnAuthenticated,
    required TResult orElse(),
  }) {
    if (needAppUpdate != null) {
      return needAppUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthStateAuthenticated value)
        authStateAuthenticated,
    required TResult Function(_NeedAppUpdate value) needAppUpdate,
    required TResult Function(_AuthStateUnAuthenticated value)
        authStateUnAuthenticated,
  }) {
    return needAppUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult? Function(_NeedAppUpdate value)? needAppUpdate,
    TResult? Function(_AuthStateUnAuthenticated value)?
        authStateUnAuthenticated,
  }) {
    return needAppUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult Function(_NeedAppUpdate value)? needAppUpdate,
    TResult Function(_AuthStateUnAuthenticated value)? authStateUnAuthenticated,
    required TResult orElse(),
  }) {
    if (needAppUpdate != null) {
      return needAppUpdate(this);
    }
    return orElse();
  }
}

abstract class _NeedAppUpdate implements AuthState {
  const factory _NeedAppUpdate() = _$_NeedAppUpdate;
}

/// @nodoc
abstract class _$$_AuthStateUnAuthenticatedCopyWith<$Res> {
  factory _$$_AuthStateUnAuthenticatedCopyWith(
          _$_AuthStateUnAuthenticated value,
          $Res Function(_$_AuthStateUnAuthenticated) then) =
      __$$_AuthStateUnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateUnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateUnAuthenticated>
    implements _$$_AuthStateUnAuthenticatedCopyWith<$Res> {
  __$$_AuthStateUnAuthenticatedCopyWithImpl(_$_AuthStateUnAuthenticated _value,
      $Res Function(_$_AuthStateUnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateUnAuthenticated
    with DiagnosticableTreeMixin
    implements _AuthStateUnAuthenticated {
  const _$_AuthStateUnAuthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authStateUnAuthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthState.authStateUnAuthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateUnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authStateAuthenticated,
    required TResult Function() needAppUpdate,
    required TResult Function() authStateUnAuthenticated,
  }) {
    return authStateUnAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authStateAuthenticated,
    TResult? Function()? needAppUpdate,
    TResult? Function()? authStateUnAuthenticated,
  }) {
    return authStateUnAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authStateAuthenticated,
    TResult Function()? needAppUpdate,
    TResult Function()? authStateUnAuthenticated,
    required TResult orElse(),
  }) {
    if (authStateUnAuthenticated != null) {
      return authStateUnAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthStateAuthenticated value)
        authStateAuthenticated,
    required TResult Function(_NeedAppUpdate value) needAppUpdate,
    required TResult Function(_AuthStateUnAuthenticated value)
        authStateUnAuthenticated,
  }) {
    return authStateUnAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult? Function(_NeedAppUpdate value)? needAppUpdate,
    TResult? Function(_AuthStateUnAuthenticated value)?
        authStateUnAuthenticated,
  }) {
    return authStateUnAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthStateAuthenticated value)? authStateAuthenticated,
    TResult Function(_NeedAppUpdate value)? needAppUpdate,
    TResult Function(_AuthStateUnAuthenticated value)? authStateUnAuthenticated,
    required TResult orElse(),
  }) {
    if (authStateUnAuthenticated != null) {
      return authStateUnAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthStateUnAuthenticated implements AuthState {
  const factory _AuthStateUnAuthenticated() = _$_AuthStateUnAuthenticated;
}

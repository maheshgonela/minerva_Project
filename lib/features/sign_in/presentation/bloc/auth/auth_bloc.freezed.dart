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
abstract class _$$AuthCheckRequestedImplCopyWith<$Res> {
  factory _$$AuthCheckRequestedImplCopyWith(_$AuthCheckRequestedImpl value,
          $Res Function(_$AuthCheckRequestedImpl) then) =
      __$$AuthCheckRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckRequestedImpl>
    implements _$$AuthCheckRequestedImplCopyWith<$Res> {
  __$$AuthCheckRequestedImplCopyWithImpl(_$AuthCheckRequestedImpl _value,
      $Res Function(_$AuthCheckRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckRequestedImpl
    with DiagnosticableTreeMixin
    implements _AuthCheckRequested {
  const _$AuthCheckRequestedImpl();

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
        (other.runtimeType == runtimeType && other is _$AuthCheckRequestedImpl);
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
  const factory _AuthCheckRequested() = _$AuthCheckRequestedImpl;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedOutImpl with DiagnosticableTreeMixin implements _SignedOut {
  const _$SignedOutImpl();

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
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
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
  const factory _SignedOut() = _$SignedOutImpl;
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
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

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
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
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
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthStateAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthStateAuthenticatedImplCopyWith(
          _$AuthStateAuthenticatedImpl value,
          $Res Function(_$AuthStateAuthenticatedImpl) then) =
      __$$AuthStateAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthenticatedImpl>
    implements _$$AuthStateAuthenticatedImplCopyWith<$Res> {
  __$$AuthStateAuthenticatedImplCopyWithImpl(
      _$AuthStateAuthenticatedImpl _value,
      $Res Function(_$AuthStateAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateAuthenticatedImpl
    with DiagnosticableTreeMixin
    implements _AuthStateAuthenticated {
  const _$AuthStateAuthenticatedImpl();

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
            other is _$AuthStateAuthenticatedImpl);
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
  const factory _AuthStateAuthenticated() = _$AuthStateAuthenticatedImpl;
}

/// @nodoc
abstract class _$$NeedAppUpdateImplCopyWith<$Res> {
  factory _$$NeedAppUpdateImplCopyWith(
          _$NeedAppUpdateImpl value, $Res Function(_$NeedAppUpdateImpl) then) =
      __$$NeedAppUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NeedAppUpdateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NeedAppUpdateImpl>
    implements _$$NeedAppUpdateImplCopyWith<$Res> {
  __$$NeedAppUpdateImplCopyWithImpl(
      _$NeedAppUpdateImpl _value, $Res Function(_$NeedAppUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NeedAppUpdateImpl
    with DiagnosticableTreeMixin
    implements _NeedAppUpdate {
  const _$NeedAppUpdateImpl();

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
        (other.runtimeType == runtimeType && other is _$NeedAppUpdateImpl);
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
  const factory _NeedAppUpdate() = _$NeedAppUpdateImpl;
}

/// @nodoc
abstract class _$$AuthStateUnAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthStateUnAuthenticatedImplCopyWith(
          _$AuthStateUnAuthenticatedImpl value,
          $Res Function(_$AuthStateUnAuthenticatedImpl) then) =
      __$$AuthStateUnAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateUnAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUnAuthenticatedImpl>
    implements _$$AuthStateUnAuthenticatedImplCopyWith<$Res> {
  __$$AuthStateUnAuthenticatedImplCopyWithImpl(
      _$AuthStateUnAuthenticatedImpl _value,
      $Res Function(_$AuthStateUnAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateUnAuthenticatedImpl
    with DiagnosticableTreeMixin
    implements _AuthStateUnAuthenticated {
  const _$AuthStateUnAuthenticatedImpl();

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
            other is _$AuthStateUnAuthenticatedImpl);
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
  const factory _AuthStateUnAuthenticated() = _$AuthStateUnAuthenticatedImpl;
}

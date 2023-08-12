part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;

  const factory AuthState.authStateAuthenticated() = _AuthStateAuthenticated;

  const factory AuthState.needAppUpdate() = _NeedAppUpdate;

  const factory AuthState.authStateUnAuthenticated() = _AuthStateUnAuthenticated;
}

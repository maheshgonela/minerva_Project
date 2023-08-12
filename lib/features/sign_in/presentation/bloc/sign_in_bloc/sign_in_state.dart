part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  const factory SignInState.loading() = _Loading;

  const factory SignInState.goToHomePage() = _Success;

  const factory SignInState.failure(Failure failure) = _Failure;
}

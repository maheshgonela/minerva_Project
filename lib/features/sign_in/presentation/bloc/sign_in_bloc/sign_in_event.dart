part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInButtonPressed(
      {required String username,
      required String password}) = _SignInButtonPressed;
}

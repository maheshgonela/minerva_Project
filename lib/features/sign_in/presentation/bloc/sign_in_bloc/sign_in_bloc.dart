import 'package:base_auth/base_auth.dart';
import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository signInRepo;

  SignInBloc({required this.signInRepo}) : super(const SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.map(signInButtonPressed: (e) async {
        emit(const SignInState.loading());
        try {
          if (e.username.isNotEmpty && e.password.isNotEmpty) {
            final result =
                await signInRepo.signIn(e.username.trim(), e.password.trim());

            emit(await result.fold(
              (l) => SignInState.failure(l),
              (r) async {
                if (!sl.isRegistered<LoggedInUser>()) {
                  sl.registerSingleton<LoggedInUser>(r);
                }

                return const SignInState.goToHomePage();
              },
            ));
          } else {
            emit(const SignInState.failure(
                Failure(error: 'Enter username and password')));
          }
        } catch (e, st) {
          logError(e, st, '[bloc] Could not sign in.');
          emit(const SignInState.failure(
              Failure(error: 'Could not sign in. Please try again later')));
        }
      });
    });
  }
}

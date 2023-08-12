import 'package:base_auth/base_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/app_version_usecase.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;
  final AppVersionUseCase appVersionUseCase;

  AuthBloc({
    required this.repository,
    required this.appVersionUseCase,
  }) : super(const AuthState.loading()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (value) async {
          try {
            final loggedIn = await repository.isLoggedIn();

            if (loggedIn) {
              final result = await repository.getPersistedUser();
              emit(await result.fold(
                (l) => const AuthState.authStateAuthenticated(),
                (r) async {
                  if (kReleaseMode) {
                    final isAvailable = await appVersionUseCase.isUpdateAvailable(r.value1.userName, r.value1.password);
                    if (isAvailable) return const AuthState.needAppUpdate();
                  }

                  if (!sl.isRegistered<LoggedInUser>()) {
                    sl.registerLazySingleton<LoggedInUser>(() => r.value1);
                  }

                  if(sl.isRegistered<List<String>>()) {
                    sl.unregister<List<String>>();
                  }
                  sl.registerLazySingleton<List<String>>(() => r.value2);
                  
                  return const AuthState.authStateAuthenticated();
                },
              ));
            } else {
              emit(const AuthState.authStateUnAuthenticated());
            }
          } catch (e, st) {
            logError(e, st, '[bloc] authCheckRequested');
            emit(const AuthState.authStateUnAuthenticated());
          }
        },
        signedOut: (value) async {
          emit(const AuthState.loading());
          try {
            await repository.signOut();

            sl.unregister<LoggedInUser>();
            emit(const AuthState.authStateUnAuthenticated());
          } catch (e, st) {
            logError(e, st, '[bloc] signedOut');
            emit(const AuthState.authStateUnAuthenticated());
          }
        },
      );
    });
  }
}

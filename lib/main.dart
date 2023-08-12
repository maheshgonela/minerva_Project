import 'dart:async';
import 'dart:developer';
import 'dart:isolate';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/app.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:injectable/injectable.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('onCreate -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange -- bloc: ${bloc.runtimeType}, change: $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('onTransition -- bloc: ${bloc.runtimeType}, transition: $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError -- bloc: ${bloc.runtimeType}, error: $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('onClose -- bloc: ${bloc.runtimeType}');
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  const env = Environment.prod;

  configureInjection(env);
  sl.registerLazySingleton<Environment>(() => const Environment(env));

  if (kDebugMode) {
    // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }

  // Isolate.current.addErrorListener(RawReceivePort((pair) async {
  //   try {
  //     final List<dynamic> errorAndStacktrace = pair as List<dynamic>;
  //     await FirebaseCrashlytics.instance.recordError(
  //       errorAndStacktrace.first,
  //       errorAndStacktrace.last as StackTrace,
  //     );
  //   } catch (e) {
  //     // pass
  //   }
  // }).sendPort);

  if (kDebugMode) Bloc.observer = SimpleBlocObserver();

  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(MinervaApp());
}

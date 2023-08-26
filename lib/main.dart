import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:minerva/app.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:injectable/injectable.dart';

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

  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(const MinervaApp());
}

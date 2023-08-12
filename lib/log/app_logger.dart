import 'dart:developer';

import 'package:base_auth/entity/logged_in_user.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:minerva/get_it/injection.dart';

Future<void> logError(Object e, StackTrace? st, String message,
    {String? serverResponse, String? defErrMsg}) async {
  if (kDebugMode) {
    log(message, error: e, stackTrace: st);
  } else {
    if (sl.isRegistered<LoggedInUser>()) {
      final user = sl.get<LoggedInUser>();
      FirebaseCrashlytics.instance.setCustomKey('user_name', user.name);
      FirebaseCrashlytics.instance.setCustomKey('user_id', user.id);
      FirebaseCrashlytics.instance
          .setCustomKey('user_bp_id', user.businessPartner);
    }

    try {
      FirebaseCrashlytics.instance.setCustomKey(
          'server_response', serverResponse ?? 'No server response found');
      if (defErrMsg != null) {
        FirebaseCrashlytics.instance.setCustomKey('def_err_msg', defErrMsg);
      }
      await FirebaseCrashlytics.instance
          .log(serverResponse ?? 'No server response found');
      await FirebaseCrashlytics.instance.recordError(e, st, reason: message);
    } catch (e, st) {
      FirebaseCrashlytics.instance.recordError(e, st,
          reason: 'Exception when recording error through Crashlytics');
    }
  }
}

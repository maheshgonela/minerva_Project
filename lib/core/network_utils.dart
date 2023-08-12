import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:core/core.dart';
import 'package:core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:http/http.dart' as http;

/// Fetches OB Error message from network response
String getErrorMsgFromResponse(Map<String, dynamic> obResponse, String defMsg) {
  try {
    return (obResponse['error'] != null
            ? obResponse['error']['message'] ?? defMsg
            : (obResponse['message'] ?? obResponse['errors']) != null
                ? (obResponse['errors'] as Map<String, dynamic>).values.toString()
                : obResponse['error'] ?? defMsg)
        .toString();
  } catch (error, st) {
    logError(error, st, defMsg);
    return defMsg;
  }
}

Either<Failure, dynamic> _getResponseByStatusCode(int statusCode, Map<String, dynamic> obResponse, String defErrMsg) {
  if (statusCode == 401) {
    return _getErrorMessage(obResponse, defErrMsg, secondaryErrorMessage: 'Unauthorized');
  } else if (statusCode >= 500) {
    return _getErrorMessage(obResponse, defErrMsg, secondaryErrorMessage: 'Servers are down. Try again later');
  } else {
    return _getErrorMessage(obResponse, defErrMsg);
  }
}

Either<Failure, dynamic> _getErrorMessage(Map<String, dynamic> obResponse, String defErrMsg,
    {String? secondaryErrorMessage}) {
  var errorMsgFromResponse = getErrorMsgFromResponse(obResponse, defErrMsg);
  return left(Failure(error: errorMsgFromResponse));
}

Future<Either<Failure, dynamic>> signInSafeApiCall(
  Future<http.Response> Function() call,
  String defErrMsg,
) async {
  try {
    if (await hasInternet() == false) {
      return left(const Failure(error: 'Please check your internet connection'));
    }

    final response = await call();
    final statusCode = response.statusCode;
    final resBody = response.body;

    try {
      final jsonRes = json.decode(resBody) as Map<String, dynamic>;
      final Map<String, dynamic> obResponse = jsonRes['response'] as Map<String, dynamic>;

      if (statusCode == 200) {
        if (obResponse['status'] == 0) {
          return right(obResponse['data']);
        } else {
          final errorMsgFromResponse = getErrorMsgFromResponse(obResponse, defErrMsg);
          return left(Failure(error: errorMsgFromResponse));
        }
      } else {
        if (statusCode == 401) {
          final errorMsgFromResponse = getErrorMsgFromResponse(obResponse, defErrMsg);
          return left(Failure(error: errorMsgFromResponse));
        } else if (statusCode >= 500) {
          return left(Failure(error: getErrorMsgFromResponse(obResponse, defErrMsg)));
        } else {
          return left(Failure(error: getErrorMsgFromResponse(obResponse, defErrMsg)));
        }
      }
    } on FormatException catch (e, st) {
      logError(e, st, defErrMsg);
      if (statusCode == 401) {
        return left(const Failure(error: "Invalid username/password"));
      } else if (statusCode >= 500 && statusCode <= 599) {
        return left(const Failure(error: "Servers are down. Try again later"));
      } else {
        return left(Failure(error: defErrMsg));
      }
    } catch (e) {
      rethrow;
    }
  } on SocketException catch (e, st) {
    logError(e, st, defErrMsg);
    return left(Failure(error: defErrMsg));
  } catch (ex, st) {
    logError(ex, st, defErrMsg);
    return left(Failure(error: defErrMsg));
  }
}

part of core;

/// Checks for active internet connection
Future<bool> hasInternet() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  return connectivityResult != ConnectivityResult.none;
}

/// Constructs the Base64 header for the Authorization
String constructAuthHeaderValue(String username, String password) =>
    'Basic ${base64Encode(utf8.encode('$username:$password'))}';

/// Authorization Header
Map<String, String> getAuthHeader(String username, String password) {
  return {
    'Authorization': constructAuthHeaderValue(username, password),
  };
}

/// Fetches OB Error message from network response
String getErrorMsgFromResponse(Map<String, dynamic> obResponse, String defMsg) {
  try {
    return obResponse['error'] != null
        ? obResponse['error']['message'] != null
            ? obResponse['error']['message']
            : defMsg
        : obResponse['message'] != null
            ? obResponse['message']
            : obResponse['errors'] != null
                ? (obResponse['errors'] as Map<String, dynamic>)
                    .values
                    .toString()
                : obResponse['error'] != null
                    ? obResponse['error']
                    : defMsg;
  } catch (error, st) {
    return defMsg;
  }
}

///
/// Safe network call with exception handling and internet check
///
/// Note: Network response should be in the following format
///
/// {
///  response: {
///         status: <status code>,
///         data: [<list of business objects>],
///         error: {
///             message: <error message>
///         },
///         message: <error message>,
///     }
///  }
///
///
Future<Either<Failure, dynamic>> safeApiCall(
  Future<http.Response> Function() call,
  String defErrMsg, {
  bool logResponseBody = false,
}) async {
  try {
    if (await hasInternet() == false) {
      return left(Failure(error: 'Please check your internet connection'));
    }

    final response = await call();
    final statusCode = response.statusCode;
    final resBody = response.body;

    if (resBody.isEmpty) {
      return left(Failure(error: 'Received empty response from server'));
    }

    if (logResponseBody) {
      log(resBody);
    }

    final jsonRes = json.decode(resBody) as Map<String, dynamic>;
    final obResponse = jsonRes['response'];

    if (statusCode == 200) {
      if (obResponse['status'] == 0) {
        return right(obResponse['data']);
      } else {
        return _getErrorMessage(obResponse, defErrMsg);
      }
    } else {
      return _getResponseByStatusCode(statusCode, obResponse, defErrMsg);
    }
  } on SocketException catch (e, st) {
    return left(Failure(error: defErrMsg));
  } catch (ex, st) {
    return left(Failure(error: defErrMsg));
  }
}

Either<Failure, dynamic> _getResponseByStatusCode(
    int statusCode, obResponse, String defErrMsg) {
  if (statusCode == 401) {
    return _getErrorMessage(obResponse, defErrMsg,
        secondaryErrorMessage: 'Unauthorized');
  } else if (statusCode >= 500) {
    return _getErrorMessage(obResponse, defErrMsg,
        secondaryErrorMessage: 'Servers are down. Try again later');
  } else {
    return _getErrorMessage(obResponse, defErrMsg);
  }
}

Either<Failure, dynamic> _getErrorMessage(obResponse, String defErrMsg,
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
      return left(
          const Failure(error: 'Please check your internet connection'));
    }

    final response = await call();
    final statusCode = response.statusCode;
    final resBody = response.body;

    try {
      final jsonRes = json.decode(resBody) as Map<String, dynamic>;
      final obResponse = jsonRes['response'];

      if (statusCode == 200) {
        if (obResponse['status'] == 0) {
          return right(obResponse['data']);
        } else {
          var errorMsgFromResponse =
              getErrorMsgFromResponse(obResponse, defErrMsg);
          return left(Failure(error: errorMsgFromResponse));
        }
      } else {
        if (statusCode == 401) {
          //var errorMsgFromResponse = getErrorMsgFromResponse(obResponse, defErrMsg);
          return left(const Failure(error: "Invalid username/password"));
        } else if (statusCode >= 500) {
          return left(
              Failure(error: getErrorMsgFromResponse(obResponse, defErrMsg)));
        } else {
          return left(
              Failure(error: getErrorMsgFromResponse(obResponse, defErrMsg)));
        }
      }
    } on FormatException catch (e, st) {
      if (statusCode == 401) {
        return left(Failure(error: "Invalid username/password"));
      } else if (statusCode >= 500 && statusCode <= 599) {
        return left(Failure(error: "Servers are down. Try again later"));
      } else {
        return left(Failure(error: defErrMsg));
      }
    } catch (e) {
      rethrow;
    }
  } on SocketException catch (e, st) {
    return left(Failure(
      error: defErrMsg,
    ));
  } catch (ex, st) {
    return left(Failure(error: defErrMsg));
  }
}

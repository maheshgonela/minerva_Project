import 'dart:convert';

import 'package:base_auth/entity/logged_in_user.dart';

abstract class AuthHelper {
  Map<String, String> authHeader2(String username, String password) => getAuthHeader(username, password);

  Map<String, String> authHeader(LoggedInUser user) {
    return getAuthHeader(user.userName, user.password);
  }

  Map<String, String> getAuthHeader(String username, String password) {
    return {
      'Authorization': constructAuthHeaderValue(username, password),
    };
  }

  String constructAuthHeaderValue(String username, String password) =>
      'Basic ${base64Encode(utf8.encode('$username:$password'))}';
}

import 'dart:convert';

import 'package:base_auth/base_auth.dart';
import 'package:core/core.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

abstract class QueryHelper {
  Future<String> getQuery(String key) async {
    final prefs = await SharedPreferences.getInstance();
    var query = prefs.getString(key);

    if (query == null) {
      query = await fetchQuery(key);
      prefs.setString(key, query);
    }
    return query;
  }

  Future<String> fetchQuery(String attribute) async {
    const entityName = "ADPreference";
    try {
      final user = sl.get<LoggedInUser>();
      final url =
          "${Constants.jsonWs}/$entityName?_startRow=0&_endRow=1&_where=attribute='$attribute'&_selectedProperties=searchKey";

      final response = await safeApiCall(
        () => http.get(Uri.parse(url),
            headers: getAuthHeader(user.userName, user.password)),
        'could not fetch data',
      );

      return response.fold(
        (l) => throw Exception(l.toString()),
        (r) => (r as List<dynamic>)[0]['searchKey'] as String,
      );
    } catch (error, st) {
      logError(error, st, 'Could not fetch query');
      throw Exception(error.toString());
    }
  }

  Future<List<dynamic>> fetchQueryResponse(String key,
      {Map<String, String>? placeholders}) async {
    final user = sl.get<LoggedInUser>();
    final query = await getQuery(key);
    const url = "${Constants.customWs}/in.easycloud.commons.QueryService";
    print(url);
    final response = await safeApiCall(() {
      final requestBody =
          jsonEncode(_constructRequestBody(query, placeholders: placeholders));

      final post = http.post(Uri.parse(url),
          headers: getAuthHeader(user.userName, user.password),
          body: requestBody);

      return post;
    }, 'Could not fetch data');

    return response.fold(
      (l) => throw Exception('could not fetch data for the query'),
      (r) => r as List<dynamic>,
    );
  }

  Map<String, Map<String, dynamic>> _constructRequestBody(String query,
      {Map<String, String>? placeholders}) {
    return {
      "data": {
        "query": query,
        if (placeholders != null) "placeholders": placeholders,
      }
    };
  }
}

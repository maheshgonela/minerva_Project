import 'package:base_auth/base_auth.dart';
import 'package:core/core.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';

@injectable
class AppVersionUseCase with AuthHelper {
  final http.Client client;

  AppVersionUseCase(this.client);

  Future<bool> isUpdateAvailable(String username, String password) async {
    const String defErrMsg = 'Could not check for update';
    try {
      const String url = "${Constants.jsonWs}/${Entities.preference}?"
          "_where=attribute='${Constants.prefAppVersion}'&_selectedProperties=searchKey";

      final result = await safeApiCall(
        () => client.get(Uri.parse(url),
            headers: getAuthHeader(username, password)),
        defErrMsg,
      );

      if (result.isLeft()) return false;
      final data = result.getOrElse(() => null)! as List<dynamic>;
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      final appVersion = packageInfo.version;
      final appVersionFromServer = data[0]['searchKey'].toString().trim();
      return appVersion != appVersionFromServer;
    } catch (e, st) {
      logError(e, st, 'could not check app update');
      return false;
    }
  }
}

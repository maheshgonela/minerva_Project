import 'dart:convert';

import 'package:base_auth/auth_helper.dart';
import 'package:base_auth/entity/logged_in_user.dart';
import 'package:base_auth/entity/mobile_access.dart';
import 'package:base_auth/repository/auth_repository.dart';
import 'package:core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/core/network_utils.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthRepository)
class SignInRepoImpl with AuthHelper implements AuthRepository {
  SignInRepoImpl(this.client);

  final http.Client client;

  static const String _userKey = 'user';

  @override
  Future<Either<Failure, LoggedInUser>> signIn(
      String userName, String password) async {
    const String defErrMsg = 'Could not login. Please try again later';
    try {
      final url =
          "${Constants.jsonWs}/${Entities.user}?_where=username='$userName'";
      final authHeaders = authHeader2(userName, password);


      final result = await signInSafeApiCall(
          () => client.get(Uri.parse(url), headers: authHeaders), defErrMsg);
      return result.fold(
        (l) => left(l),
        (data) async {
          final userData = data[0] as Map<String, dynamic>;

          if (userData['defaultOrganization'] == null) {
            return left(
                const Failure(error: 'Please set your default organization'));
          }
          if (userData['defaultWarehouse'] == null) {
            return left(
                const Failure(error: 'Please set your default warehouse'));
          }
          if (userData['businessPartner'] == null) {
            return left(const Failure(
                error: 'Please set your default business partner'));
          }
          if (userData['partnerAddress'] == null) {
            return left(const Failure(
                error: 'Please set your default business partner address'));
          }

          final logged =
              LoggedInUser.fromJson(userData).copyWith(password: password);
          await persistUser(logged);
          final features = await fetchMobileAccess(logged.id, userName, password);
          final accessiableFeatures = features.getOrElse(() => []);
          await persistMobileAccess(accessiableFeatures);
          return right(logged);
        },
      );
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }

  @override
  Future<Either<Failure, Tuple2<LoggedInUser,List<String>>>> getPersistedUser() async {
    try {
      const storage = FlutterSecureStorage();

      final userData = jsonDecode((await storage.read(key: _userKey))!)
          as Map<String, dynamic>;
      final user = LoggedInUser.fromJson(userData);
      final features = await getPersistedUserAccessibleFeatures();
      return right(tuple2(user, features));
    } catch (e, st) {
      logError(e, st, '[repo] could not get persisted user');
      throw left(const Failure(error: 'Something went wrong'));
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    try {
      const storage = FlutterSecureStorage();
      return await storage.read(key: _userKey) != null;
    } catch (e, st) {
      logError(e, st, '[repo] could not check for persisted user');
      return false;
    }
  }

  @override
  Future<Either<Failure, bool>> persistUser(LoggedInUser loggedInUser) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.write(
          key: _userKey, value: jsonEncode(loggedInUser.toJson()));
      return right(true);
    } catch (e, st) {
      logError(e, st, '[repo] could not persisted user');
      throw left(const Failure(error: 'Something went wrong'));
    }
  }

  Future<Either<Failure, bool>> persistMobileAccess(
      List<MobileAccess> mobileAccess) async {
    try {
      final pref = await SharedPreferences.getInstance();
      final List<String> features = mobileAccess.map((e) => e.name).toList();
      await pref.setStringList('mobileAccess', features);
      return right(true);
    } catch (e, st) {
      logError(e, st, '[repo] could not persisted user');
      throw left(const Failure(error: 'Something went wrong'));
    }
  }

  Future<List<String>> getPersistedUserAccessibleFeatures() async {
    final pref = await SharedPreferences.getInstance();

    final featuresList = pref.getStringList('mobileAccess');

    if (featuresList == null || featuresList.isEmpty) {
      return [];
    }

    return featuresList;
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      await _removeUser();
      (await SharedPreferences.getInstance()).clear();
      return right(true);
    } catch (e, st) {
      logError(e, st, '[repo] could not sign out user');
      throw left(const Failure(error: 'Could not sign out'));
    }
  }

  Future<void> _removeUser() async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: _userKey);
  }

  @override
  Future<Either<Failure, List<MobileAccess>>> fetchMobileAccess(
      String id, String name, String password) async {
    const defErrMsg = 'could not fetch mobile access';
    try {
      const entityName = Entities.mobileAccess;

      final url =
          "${Constants.jsonWs}/$entityName?_where=user='$id'&_selectedProperties=gPRMobilemaster,user";

      final authHeader = authHeader2(name, password);

      final recivedData = await signInSafeApiCall(() {
        return client.get(Uri.parse(url), headers: authHeader);
      }, defErrMsg);
      return recivedData.fold((l) {
        return left(const Failure(error: defErrMsg));
      }, (r) {
        final resultList = r as List<dynamic>;
        final allRequestDetails = resultList.map((element) {
          return MobileAccess.fromJson(element as Map<String, dynamic>);
        }).toList();
        return right(allRequestDetails);
      });
    } catch (e, st) {
      logError(e, st, defErrMsg);
      return left(const Failure(error: defErrMsg));
    }
  }
}

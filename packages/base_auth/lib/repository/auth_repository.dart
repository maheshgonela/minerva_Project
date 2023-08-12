import 'package:base_auth/entity/logged_in_user.dart';
import 'package:base_auth/entity/mobile_access.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoggedInUser>> signIn(
      String username, String password);

  Future<Either<Failure, List<MobileAccess>>> fetchMobileAccess(
      String id, String username, String password);

  Future<Either<Failure, bool>> persistUser(LoggedInUser loggedInUser);

  Future<Either<Failure, Tuple2<LoggedInUser,List<String>>>> getPersistedUser();

  Future<Either<Failure, bool>> signOut();

  Future<bool> isLoggedIn();
}

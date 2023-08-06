import '../domain/model/user.dart';

import '/app/services/remote/config/result.dart';

abstract class AuthService {

  Future<Result<User>> getAndSaveLogin();
  Future<void> initLogin();

  Future<void> logout();

  User? get getCurrentUser;

  Future<Result<void>> loginGoogle();
}

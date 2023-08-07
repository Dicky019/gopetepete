import 'package:flutter_application_1/app/features/auth/domain/model/user.dart';

abstract class Local {
  Future<void> saveUser(User user);

  User? get getUser;

  Future<void> saveUserToken(String token);
  Future<void> saveEmail(String token);
}

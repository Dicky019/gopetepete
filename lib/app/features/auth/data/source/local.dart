import 'package:flutter_application_1/app/features/auth/domain/model/user.dart';

abstract class Local {
  Future<void> deleteUser();

  Future<void> saveUser(User user);

  User? get getUser;
  String? get getEmail;
  String? get getUserToken;

  Future<void> saveUserToken(String token);
  Future<void> saveEmail(String token);

  Future<void> deleteToken();
  Future<void> deleteEmail();
}

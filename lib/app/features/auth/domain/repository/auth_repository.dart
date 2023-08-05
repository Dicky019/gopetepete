import '/app/services/remote/config/result.dart';
import '../../data/response/user_response.dart';
import '../model/user.dart';

abstract class AuthRepository {
  // TODO: add your impl here
  Future<Result<String>> loginGoogle();
  Future<void> logout();
  Future<void> saveUser(User user);
  Future<void> saveUserToken(String token);
  User? get getUser;
  Future<Result<UserResponse>> loginResponse();
}

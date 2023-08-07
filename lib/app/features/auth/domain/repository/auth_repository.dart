import '../../data/request/user_request.dart';
import '../../data/response/user_response.dart';
import '/app/services/remote/config/result.dart';
import '../model/user.dart';

abstract class AuthRepository {
  Future<Result<String>> loginGoogle();
  Future<void> logout();
  Future<void> saveUser(User user);
  Future<void> saveUserToken(String token);
  User? get getUser;
  String? get getUserToken;
  Future<Result<UserResponse>> loginResponse();
  Future<Result<String>> register({required UserRequest userRequest});
}

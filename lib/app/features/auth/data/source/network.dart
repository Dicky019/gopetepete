import '../response/user_response.dart';
import '/app/services/remote/config/result.dart';

abstract class Network {
  // TODO: add your impl here

  Future<Result<String>> loginGoogle();
  Future<Result<UserResponse>> loginResponse();
}

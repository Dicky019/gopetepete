import 'package:flutter_application_1/app/core/services/remote/config/config.dart';
import 'package:flutter_application_1/app/features/auth/data/response/user_response.dart';

abstract class Network {
  // TODO: add your impl here

  Future<Result<String>> loginGoogle();
  Future<Result<UserResponse>> loginResponse();
}

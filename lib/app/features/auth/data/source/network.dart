import 'package:firebase_auth/firebase_auth.dart';

import '../request/user_request.dart';
import '../response/user_response.dart';
import '/app/services/remote/config/result.dart';

abstract class Network {
  Future<Result<User>> loginFirebaseGoogle();
  Future<Result<UserResponse>> register({required UserRequest userRequest});
  Future<Result<UserResponse>> loginResponse();
}

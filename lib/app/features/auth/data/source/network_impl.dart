import 'dart:developer';

import '/app/services/remote/config/result.dart';
import '/app/services/remote/api/auth_api.dart';
import '/app/utils/extension/string_extension.dart';
import '../response/user_response.dart';
import '../request/user_request.dart';
import 'network.dart';

class NetworkImpl extends Network {
  final AuthApi _authApi;

  NetworkImpl(this._authApi);

  @override
  Future<Result<String>> loginGoogle() async {
    // TODO: implement loginGoogle
    final firebaseAuthResult = await _authApi.signInWithGoogle();

    return await firebaseAuthResult.when(
      success: (data) async {
        final userRequest = UserRequest(
          email: data.email.toEmpty,
          image: data.photoURL.imageDefault,
          name: data.displayName.toEmpty,
        );

        log(userRequest.toString(),name: "userRequest");

        final result = await _authApi.register(userRequest: userRequest);

        return result;
      },
      failure: (error, stackTrace) {
        return Result.failure(error, stackTrace);
      },
    );
  }

  @override
  Future<Result<UserResponse>> loginResponse() {
    // TODO: implement loginResponse
    return _authApi.loginResponse();
  }
}

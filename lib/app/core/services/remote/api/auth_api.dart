import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/app/core/utils/extension/dynamic_extension.dart';
import 'package:flutter_application_1/app/core/utils/extension/string_extension.dart';
import 'package:flutter_application_1/app/features/auth/data/request/user_request.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../features/auth/data/response/user_response.dart';
import '../config/config.dart';

class AuthApi {
  final DioClient _dioClient;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AuthApi(this._dioClient);

  Future<Result<String>> register({required UserRequest userRequest}) async {
    try {
      log(userRequest.toString(), name: "data");

      final response =
          await _dioClient.post(Endpoint.register, data: userRequest.toJson());
      log(response.toString(), name: "response");
      return Result.success(response['data']['accessToken'] ?? "");
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<Result<void>> logout() async {
    await _firebaseAuth.signOut();
    return const Result.success(null);
  }

  Future<Result<UserResponse>> loginResponse() async {
    try {
      final response = await _dioClient.get(Endpoint.login);
      return Result.success(UserResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<Result<User>> signInWithGoogle() async {
    try {
      await _firebaseAuth.signOut();
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      final firebaseUser = await _firebaseAuth.signInWithCredential(credential);
      if (firebaseUser.user.isNull) {
        throw Exception("Tidak Ada User");
      }

      if (firebaseUser.user!.email.isNullOrEmpty) {
        throw Exception("Tidak Email");
      }

      return Result.success(firebaseUser.user!);
    } on FirebaseAuthException catch (e, st) {
      return Result.failure(
        NetworkExceptions.defaultError(e.message ?? "Ada Yang Salah"),
        st,
      );
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.defaultError(e.toString()),
        st,
      );
    }
  }
}

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(ref.read(dioClientProvider));
});

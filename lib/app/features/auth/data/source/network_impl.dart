import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '/app/services/remote/config/config.dart';
import '/app/utils/extension/string_extension.dart';
import '/app/utils/extension/dynamic_extension.dart';
import '../request/user_request.dart';

import '../response/user_response.dart';
import 'network.dart';

class NetworkImpl extends Network {
  final DioClient _dioClient;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  NetworkImpl(
    this._dioClient,
  );

  Future<Result<void>> logout() async {
    await _firebaseAuth.signOut();
    return const Result.success(null);
  }

  @override
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

  @override
  Future<Result<User>> loginFirebaseGoogle() async {
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

  @override
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
}

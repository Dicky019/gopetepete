import 'dart:developer';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/services/remote/config/result.dart';
import '../domain/model/user.dart';
import '../domain/repository/auth_repository.dart';
import 'auth_mapper.dart';

class AuthService {
  final AuthRepository authRepository;

  AuthService(this.authRepository);

  Future<Result<void>> loginGoogle() async {
    final resultLogin = await authRepository.loginGoogle();

    await resultLogin.whenOrNull(success: (token) async {
      authRepository.saveUserToken(token);
      await getAndSaveLogin();
    });

    return resultLogin;
  }

  Future logout() async => authRepository.logout();
  User? getCurrentUser() => authRepository.getUser;

//  TODO: For get user
  Future getAndSaveLogin() async {
    final responseProfile = await authRepository.loginResponse();
    final resultProfile = AuthenticationMapper.mapToUser(responseProfile);

    await resultProfile.when(
      success: (user) async {
        await authRepository.saveUser(user);
        log("authRepository.saveUser(user)",
            name: "authRepository.saveUser(user)");
        log(user.toJson().toString(), name: "user");
      },
      failure: (error, stackTrace) async {
        log(error.toString());
        log(stackTrace.toString());
        await authRepository.logout();
      },
    );
  }
}

final authServiceProvider = Provider<AuthService>((_) {
  throw UnimplementedError();
});

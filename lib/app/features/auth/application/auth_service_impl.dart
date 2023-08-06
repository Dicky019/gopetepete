import 'dart:developer';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/utils/extension/dynamic_extension.dart';
import '/app/services/remote/config/result.dart';
import '../domain/model/user.dart';
import '../domain/repository/auth_repository.dart';
import '../data/request/user_request.dart';
import 'mapper/auth_mapper.dart';
import 'auth_service.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository authRepository;

  AuthServiceImpl(this.authRepository);

  @override
  Future<Result<void>> loginGoogle() async {
    final resultLogin = await authRepository.loginGoogle();

    return await resultLogin.when(
      success: (token) async {
        authRepository.saveUserToken(token);
        await getAndSaveLogin();
        return const Result.success(null);
      },
      failure: (error, stackTrace) => Result.failure(error, stackTrace),
    );
  }

  @override
  Future logout() async => authRepository.logout();

  @override
  User? get getCurrentUser => authRepository.getUser;

  @override
  Future<Result<User>> getAndSaveLogin() async {
    final responseProfile = await authRepository.loginResponse();
    final resultProfile = AuthenticationMapper.mapToUser(responseProfile);

    return await resultProfile.when(
      success: (user) async {
        await authRepository.saveUser(user);
        return Result.success(user);
      },
      failure: (error, stackTrace) async {
        await authRepository.logout();
        return Result.failure(error, stackTrace);
      },
    );
  }

  @override
  Future initLogin() async {
    if (getCurrentUser.isNotNull) {
      final registerResult = await authRepository.register(
        userRequest: UserRequest(
          email: getCurrentUser!.email,
          name: getCurrentUser!.name,
          image: getCurrentUser!.image,
        ),
      );

      await registerResult.whenOrNull(
        success: (user) async => await authRepository.saveUserToken(user),
        failure: (error, stackTrace) async => await authRepository.logout(),
      );
    }

    log("getCurrentUser Null");
  }
}

final authServiceProvider = Provider<AuthServiceImpl>((_) {
  throw UnimplementedError();
});

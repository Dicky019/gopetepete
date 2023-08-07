import 'dart:developer';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/utils/extension/dynamic_extension.dart';
import '/app/services/remote/config/result.dart';
import '../data/repository/auth_repository_impl.dart';
import '../domain/model/user.dart';
import '../data/request/user_request.dart';
import 'mapper/auth_mapper.dart';
import 'auth_service.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepositoryImpl _authRepository;

  AuthServiceImpl(this._authRepository);

  @override
  Future<Result<void>> loginGoogle() async {
    final resultLogin = await _authRepository.loginGoogle();

    return await resultLogin.when(
      success: (token) async {
        _authRepository.saveUserToken(token);
        await getAndSaveLogin();
        return const Result.success(null);
      },
      failure: (error, stackTrace) => Result.failure(error, stackTrace),
    );
  }

  @override
  Future logout() async => _authRepository.logout();

  @override
  User? get getCurrentUser => _authRepository.getUser;

  @override
  Future<Result<User>> getAndSaveLogin() async {
    final responseProfile = await _authRepository.loginResponse();
    final resultProfile = AuthenticationMapper.mapToUser(responseProfile);

    return await resultProfile.when(
      success: (user) async {
        await _authRepository.saveUser(user);
        return Result.success(user);
      },
      failure: (error, stackTrace) async {
        await _authRepository.logout();
        return Result.failure(error, stackTrace);
      },
    );
  }

  @override
  Future initLogin() async {
    log(getCurrentUser?.toJson().toString() ?? "User Kosong");
    log(_authRepository.getUserToken?.toString() ?? "getUserToken Kosong");
    if (getCurrentUser.isNotNull && _authRepository.getUserToken.isNotNull) {
      final registerResult = await _authRepository.register(
        userRequest: UserRequest(
          email: getCurrentUser!.email,
          name: getCurrentUser!.name,
          image: getCurrentUser!.image,
        ),
      );

      await registerResult.whenOrNull(
        success: (user) async => await _authRepository.saveUserToken(user),
        failure: (error, stackTrace) async {
          error.whenOrNull(
            notFound: (reason) => log(reason),
            unauthorizedRequest: (reason) => log(reason),
          );
          return await _authRepository.logout();
        },
      );
      log("getCurrentUser");
      return;
    }

    log("getCurrentUser Null");
  }
}

final authServiceProvider = Provider<AuthServiceImpl>((_) {
  throw UnimplementedError();
});

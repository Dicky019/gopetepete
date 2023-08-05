import 'package:flutter_application_1/app/core/services/remote/config/config.dart';
import 'package:flutter_application_1/app/features/auth/data/response/user_response.dart';

import '../../domain/model/user.dart';
import '../../domain/repository/auth_repository.dart';
import '../source/local.dart';

class AuthRepositoryFake extends AuthRepository {
  final Local local;

  AuthRepositoryFake(this.local);

  @override
  Future<Result<String>> loginGoogle() async {
    // TODO: implement loginGoogle
    await Future.delayed(const Duration(seconds: 3));

    const user = User(
      name: "DickyFakeGoogle",
      email: "DickyFakeGoogle@gmail.com",
      userRole: UserRole.driver,
      image: '',
    );

    await local.saveUser(user);

    return const Result.success("user");
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
  
  @override
  Future<void> saveUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }
  
  @override
  Future<void> saveUserToken(String token) {
    // TODO: implement saveUserToken
    throw UnimplementedError();
  }

  @override
  User get getUser {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<Result<UserResponse>> loginResponse() {
    // TODO: implement loginResponse
    throw UnimplementedError();
  }
}

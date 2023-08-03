import 'package:flutter_application_1/app/core/services/remote/config/config.dart';

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
      userName: "DickyFakeGoogle",
      email: "DickyFakeGoogle@gmail.com",
      userRole: UserRole.user,
    );

    await local.saveUser(user);

    return const Result.success("user");
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

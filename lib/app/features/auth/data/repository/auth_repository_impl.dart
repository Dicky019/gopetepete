import '../../domain/model/user.dart';
import '../../domain/repository/auth_repository.dart';

import '../source/local.dart';
import '../source/network.dart';

class AuthRepositoryImpl extends AuthRepository {
  final Local local;
  final Network network;

  AuthRepositoryImpl({required this.local, required this.network});


  @override
  Future<User?> loginGoogle() async {
    final user = await network.loginGoogle("dicky93darmawan@gmail.com");
    if (user != null) {
      await local.saveUser(user);
    }
    return user;
  }

  @override
  Future<void> logout() {
    return local.deleteUser();
  }
}

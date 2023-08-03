import '../../../../core/services/remote/config/config.dart';
import '../../domain/repository/auth_repository.dart';
import '../source/local.dart';
import '../source/network.dart';

class AuthRepositoryImpl extends AuthRepository {
  final Local local;
  final Network network;

  AuthRepositoryImpl({required this.local, required this.network});

  @override
  Future<Result<String>> loginGoogle() async {
    return await network.loginGoogle();
  }

  @override
  Future<void> logout() async {
    await local.deleteUser();
    await local.deleteToken();
  }
}


import '/app/services/remote/config/result.dart';
import '../../domain/model/user.dart';
import '../response/user_response.dart';
import '../../domain/repository/auth_repository.dart';
import '../source/local.dart';
import '../source/network.dart';

class AuthRepositoryImpl extends AuthRepository {
  final Local _local;
  final Network _network;

  AuthRepositoryImpl({required Local local, required Network network})
      : _network = network,
        _local = local;

  @override
  Future<Result<String>> loginGoogle() async {
    return await _network.loginGoogle();
  }

  @override
  Future<void> logout() async {
    await _local.deleteUser();
    await _local.deleteToken();
  }

  @override
  User? get getUser {
    // TODO: implement getUser
    return _local.getUser;
  }

  @override
  Future<void> saveUser(User user) {
    // TODO: implement saveUser
    return _local.saveUser(user);
  }

  @override
  Future<void> saveUserToken(String token) {
    // TODO: implement saveUserToken
    return _local.saveUserToken(token);
  }

  @override
  Future<Result<UserResponse>> loginResponse() {
    // TODO: implement loginResponse
    return _network.loginResponse();
  }
}

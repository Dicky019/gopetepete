import '../../../../utils/extension/string_extension.dart';

import '../request/user_request.dart';
import '/app/services/remote/config/result.dart';
import '../../domain/model/user.dart';
import '../response/user_response.dart';
import '../../domain/repository/auth_repository.dart';
import '../source/local_impl.dart';
import '../source/network_impl.dart';

class AuthRepositoryImpl extends AuthRepository {
  final LocalImpl _local;
  final NetworkImpl _network;

  AuthRepositoryImpl({required LocalImpl local, required NetworkImpl network})
      : _network = network,
        _local = local;

  @override
  Future<Result<UserResponse>> loginGoogle() async {
    final resultFirebaseGoogle = await _network.loginFirebaseGoogle();

    return await resultFirebaseGoogle.when(
      success: (user) async {
        final userRequest = UserRequest(
          email: user.email.toEmpty,
          image: user.photoURL.imageDefault,
          name: user.displayName.toEmpty,
        );
        return await register(userRequest: userRequest);
      },
      failure: (error, stackTrace) => Result.failure(error, stackTrace),
    );
  }

  @override
  Future<void> logout() async {
    await _local.deleteUser();
    await _local.deleteEmail();
    await _local.deleteToken();
  }

  @override
  User? get getUser => _local.getUser;

  @override
  String? get getUserToken => _local.getUserToken;

  @override
  Future<void> saveUser(User user) async {
    await _local.saveUser(user);
    await _local.saveEmail(user.email);
  }

  @override
  Future<void> saveUserToken(String token) => _local.saveUserToken(token);

  @override
  Future<Result<UserResponse>> loginResponse() => _network.loginResponse();

  @override
  Future<Result<UserResponse>> register({required UserRequest userRequest}) =>
      _network.register(userRequest: userRequest);
}

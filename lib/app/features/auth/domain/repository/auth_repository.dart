import '../../../../core/services/remote/config/config.dart';

abstract class AuthRepository {
  // TODO: add your impl here
  Future<Result<String>> loginGoogle();
  Future<void> logout();
}

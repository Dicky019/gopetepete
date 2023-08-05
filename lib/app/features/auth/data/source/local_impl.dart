import '/app/core/services/local/hive_service.dart';
import '../../domain/model/user.dart';
import 'local.dart';

class LocalImpl extends Local {
  final HiveService _hiveService;

  LocalImpl(this._hiveService);

  @override
  Future<void> deleteUser() {
    // TODO: implement deleteUser
    return _hiveService.deleteUser();
  }

  @override
  Future<void> saveUser(User user) {
    // TODO: implement saveUser
    return _hiveService.putUser(user);
  }

  @override
  Future<void> saveUserToken(String token) {
    // TODO: implement saveToken
    return _hiveService.putUserToken(token);
  }

  @override
  Future<void> deleteToken() {
    // TODO: implement deleteToken
    return _hiveService.deleteUser();
  }

  @override
  User? get getUser => _hiveService.getUser();
}

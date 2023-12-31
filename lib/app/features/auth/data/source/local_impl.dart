import '/app/services/local/hive_service.dart';
import '../../domain/model/user.dart';
import 'local.dart';

class LocalImpl extends Local {
  final HiveService _hiveService;

  LocalImpl(this._hiveService);

  @override
  Future<void> deleteUser() {
    return _hiveService.deleteUser();
  }

  @override
  Future<void> saveUser(User user) {
    return _hiveService.putUser(user);
  }

  @override
  Future<void> saveUserToken(String token) {
    return _hiveService.putUserToken(token);
  }

  @override
  Future<void> deleteToken() {
    return _hiveService.deleteUser();
  }

  @override
  User? get getUser => _hiveService.getUser;

  @override
  String? get getUserToken => _hiveService.getUserToken;

  @override
  String? get getEmail => _hiveService.getEmail;

  @override
  Future<void> saveEmail(String token) {
    return _hiveService.putEmail(token);
  }
  
  @override
  Future<void> deleteEmail() {
    return _hiveService.deleteEmail();
  }

}

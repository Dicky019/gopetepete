
import '/app/services/local/hive_service.dart';
import '../../../auth/domain/model/user.dart';
import 'local.dart';

class LocalImpl extends Local {
  final HiveService _hiveService;

  LocalImpl(this._hiveService);


  @override
  Future<void> saveUser(User user) {
    return _hiveService.putUser(user);
  }

  @override
  Future<void> saveUserToken(String token) {
    return _hiveService.putUserToken(token);
  }

  @override
  Future<void> saveEmail(String token) {
    return _hiveService.putEmail(token);
  }

  @override
  User? get getUser => _hiveService.getUser;

}

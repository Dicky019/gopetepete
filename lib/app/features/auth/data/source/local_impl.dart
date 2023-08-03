import '/app/core/services/local/hive_service.dart';
import '../../domain/model/user.dart';
import 'local.dart';

class LocalImpl extends Local {
  final HiveService appStorage;

  LocalImpl(this.appStorage);

  @override
  Future<void> deleteUser() {
    // TODO: implement deleteUser
    return appStorage.deleteUser();
  }

  @override
  Future<void> saveUser(User user) {
    // TODO: implement saveUser
    return appStorage.putUser(user);
  }

  @override
  Future<void> saveToken(String token) {
    // TODO: implement saveToken
    return appStorage.putUserToken(token);
  }

  @override
  Future<void> deleteToken() {
    // TODO: implement deleteToken
    return appStorage.deleteUser();
  }
}

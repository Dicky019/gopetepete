import '../../../../core/local_storage/app_storage.dart';
import '../../domain/model/user.dart';
import 'local.dart';

class LocalImpl extends Local {
  final AppStorage appStorage;

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
}

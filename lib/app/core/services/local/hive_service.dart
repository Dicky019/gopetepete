import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../features/auth/domain/model/user.dart';
import 'key_storage.dart';

class HiveService {
  Box? _box;

  /// for initialling app local storage
  Future<void> initAppStorage() async {
    await Hive.initFlutter();
    // TODO: add your storage name here
    _box = _box ?? await Hive.openBox('local db');
  }

  /// for getting string from box
  bool? getOnboarding() {
    return _box?.get(KeyStorage.onboarding) as bool?;
  }

  /// for storing Onboarding to app
  Future<void> putOnboarding(bool onboarding) async {
    await _box?.put(KeyStorage.onboarding, onboarding);
  }

  /// for getting string from box
  User? getUser() {
    final userJson = _box?.get(KeyStorage.user) as Map<String,dynamic>?;
    return userJson != null ? User.fromJson(userJson) : null;
  }

  /// for storing User to app
  Future<void> putUser(User user) async {
    await _box?.put(KeyStorage.user, user.toJson());
  }

  /// for delete User to app
  Future<void> deleteUser() async {
    await _box?.delete(KeyStorage.user);
  }

  /// for getting string from box
  String? getUserToken() {
    return _box?.get(KeyStorage.token) as String?;
  }

  /// for storing User to app
  Future<void> putUserToken(String token) async {
    await _box?.put(KeyStorage.token, token);
  }

  /// for clearing all data in box
  Future<void> clearAllData() async {
    await _box?.clear();
  }
}

final hiveServiceProvider = Provider<HiveService>(
  (_) {
    throw UnimplementedError();
  },
);

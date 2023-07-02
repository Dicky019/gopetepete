import 'package:flutter_application_1/app/core/local_storage/key_storage.dart';
import 'package:flutter_application_1/app/features/login/model/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppStorage {
  // ignore: unused_field
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
  UserModel? getUser() {
    final json = _box?.get(KeyStorage.user) as Map<String, dynamic>?;
    return json != null ? UserModel.fromJson(json) : null;
  }

  /// for storing User to app
  Future<void> putUser(UserModel user) async {
    await _box?.put(KeyStorage.user, user.toJson());
  }

  /// for getting string from box
  String? getAuth() {
    return _box?.get(KeyStorage.auth) as String?;
  }

  /// for storing User to app
  Future<void> putAuth(String auth) async {
    await _box?.put(KeyStorage.auth, auth);
  }

  /// for clearing all data in box
  Future<void> clearAllData() async {
    await _box?.clear();
  }
}

final appStorageProvider = Provider<AppStorage>(
  (_) {
    throw UnimplementedError();
  },
);

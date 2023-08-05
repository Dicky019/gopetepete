import 'dart:convert';
import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../constants/key/hive_key.dart';
import '../../features/auth/domain/model/user.dart';
import '/app/utils/extension/string_extension.dart';

class HiveService {
  Box<String>? _box;

  Future<void> hiveInit() async {
    await Hive.initFlutter();
    //
    _box = _box ?? await Hive.openBox("local storage");
  }

  bool isFirstInstall() {
    final hiveBool = _box?.get(HiveKey.firstInstall);
    return hiveBool != null ? false : true;
  }

  /// Set first install
  void setNotFirstInstall() {
    _box?.put(HiveKey.firstInstall, 'false');
  }

  /// for getting string from box
  User? getUser() {
    try {
      final hiveJson = _box?.get(HiveKey.user);
      if (hiveJson.isNullOrEmpty) return null;

      final userJson = json.decode(hiveJson!);
      return User.fromJson(userJson);
    } catch (error, st) {
      log(error.toString(), error: error, stackTrace: st);
      return null;
    }
  }

  /// for storing User to app
  Future<void> putUser(User user) async {
    final hiveJson = user.toJson();
    final userJson = json.encode(hiveJson);
    await _box?.put(HiveKey.user, userJson);
  }

  /// for delete User to app
  Future<void> deleteUser() async {
    await _box?.delete(HiveKey.user);
  }

  /// for getting string from box
  String? getUserToken() {
    return _box?.get(HiveKey.userToken);
  }

  /// for storing User to app
  Future<void> putUserToken(String token) async {
    await _box?.put(HiveKey.userToken, token);
  }

  /// for getting string from box
  String? getEmail() {
    return _box?.get(HiveKey.email);
  }

  /// for storing User to app
  Future<void> putEmail(String token) async {
    await _box?.put(HiveKey.email, token);
  }

  /// for delete User to app
  Future<void> deleteEmail() async {
    await _box?.delete(HiveKey.email);
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

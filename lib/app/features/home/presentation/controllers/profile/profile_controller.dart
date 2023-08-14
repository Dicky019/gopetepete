import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/features/auth/presentation/login_view.dart';
import '/app/features/auth/application/auth_service_impl.dart';
import '/app/features/auth/domain/model/user.dart';

import 'profile_state.dart';

class MapControllerNotifier extends StateNotifier<ProfileState> {
  MapControllerNotifier(
    this._authService,
  ) : super(const ProfileState());

  final AuthServiceImpl _authService;

  User? get user => _authService.getCurrentUser;

  void logout(BuildContext context) async {
    EasyLoading.show(status: "Memuat");
    await _authService.logout();
    EasyLoading.dismiss();
    // ignore: use_build_context_synchronously
    context.go(LoginView.routeName);
  }
}

final personControllerProvider =
    StateNotifierProvider<MapControllerNotifier, ProfileState>((ref) {
  return MapControllerNotifier(
    ref.read(authServiceProvider),
  );
});

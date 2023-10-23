import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../home/presentation/home_view.dart';
import '../application/auth_service_impl.dart';
import 'login_state.dart';

class LoginControllerNotifier extends StateNotifier<LoginState> {
  LoginControllerNotifier(this._authenticationService)
      : super(const LoginState());

  final AuthServiceImpl _authenticationService;

  void fetchLogin(BuildContext context) async {
    EasyLoading.show(status: "Memuat");
    state = state.copyWith(value: const AsyncLoading());

    final result = await _authenticationService.loginGoogle();

    result.when(
      success: (data) {
        state = state.copyWith(
          value: const AsyncData(true),
        );
        EasyLoading.showSuccess("Berhasil");
      },
      failure: (error, stackTrace) {
        error.whenOrNull(notFound: (reason) {
          log(reason.isEmpty ? "kosong" : reason, name: "failure");
          EasyLoading.showError(reason);
        });
        state = state.copyWith(
          value: AsyncValue.error(error, stackTrace),
        );
      },
    );

    if (state.value.hasValue == true) {
      // ignore: use_build_context_synchronously
      context.go(HomeView.routeName);
    }

    state = state.copyWith(
      value: const AsyncData(null),
    );
    // EasyLoading.dismiss();
  }

  void logout() => _authenticationService.logout();
}

final loginControllerProvider =
    StateNotifierProvider<LoginControllerNotifier, LoginState>((ref) {
  return LoginControllerNotifier(
    ref.read(authServiceProvider),
  );
});

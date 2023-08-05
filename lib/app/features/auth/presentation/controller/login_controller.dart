import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../application/authentication_service.dart';
import 'login_state.dart';

class LoginControllerNotifier extends StateNotifier<LoginState> {
  LoginControllerNotifier(this._authenticationService)
      : super(const LoginState());

  final AuthService _authenticationService;

  void fetchLogin() async {
    state = state.copyWith(value: const AsyncLoading());

    final result = await _authenticationService.loginGoogle();

    result.when(
      success: (data) {
        state = state.copyWith(
          value: const AsyncData(true),
        );
      },
      failure: (error, stackTrace) {
        state = state.copyWith(
          value: AsyncValue.error(error, stackTrace),
        );
      },
    );

    state = state.copyWith(
      value: const AsyncData(null),
    );
  }

  void logout() => _authenticationService.logout();

  // @override
  // void dispose() {
  //   // emailController.dispose();
  //   // passwordController.dispose();
  //   super.dispose();
  // }
}

final loginControllerProvider =
    StateNotifierProvider<LoginControllerNotifier, LoginState>(
        (ref) {
  return LoginControllerNotifier(
    ref.read(authServiceProvider),
  );
});

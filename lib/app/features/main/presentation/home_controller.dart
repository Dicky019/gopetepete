import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../auth/application/auth_service_impl.dart';
// import '../application/home_service_impl.dart';
import 'home_view.dart';
import 'home_state.dart';

class HomeControllerNotifier extends StateNotifier<HomeState> {
  HomeControllerNotifier(
    this._authService,
    // this._homeService,
  ) : super(const HomeState());

  final AuthServiceImpl _authService;
  // final HomeServiceImpl _homeService;

  void logout(BuildContext context) async {
    state = state.copyWith(
      value: const AsyncLoading(),
    );
    await _authService.logout();
    state = state.copyWith(
      value: const AsyncData(null),
    );
    // ignore: use_build_context_synchronously
    context.push(HomeView.routeName);
  }

  // @override
  // void dispose() {
  //   // emailController.dispose();
  //   // passwordController.dispose();
  //   super.dispose();
  // }
}

final homeControllerProvider =
    StateNotifierProvider<HomeControllerNotifier, HomeState>((ref) {
  return HomeControllerNotifier(
    ref.read(authServiceProvider),
    // ref.read(homeServiceProvider),
  );
});

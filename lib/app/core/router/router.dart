import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/auth/view/login_view.dart';
import '../../features/main/view/main_view.dart';
import '../../features/sign_in_driver/view/sign_in_driver_view.dart';
import '../local_storage/app_storage.dart';

///
/// for getting routers that are present in the app
///
final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      // TODO: add your router here
      debugLogDiagnostics: true,
      initialLocation: MainView.routeName,
      // refreshListenable: ref.watch(appStorageProvider),
      redirect: (context, state) {
        final user = ref.read(appStorageProvider).getUser();

        if (user == null) {
          return LoginView.routeName;
        }

        return null;
      },
      routes: [
        /// for showing onboarding
        GoRoute(
          path: MainView.routeName,
          builder: (context, state) => const MainView(),
        ),
        GoRoute(
          path: LoginView.routeName,
          builder: (context, state) => const LoginView(),
        ),
        GoRoute(
          path: SignInDriverView.routeName,
          builder: (context, state) => const SignInDriverView(),
        ),
      ],
    );
  },
);

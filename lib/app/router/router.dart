import 'package:flutter_application_1/app/utils/extension/dynamic_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../features/auth/application/auth_service_impl.dart';
import '../features/auth/presentation/login_view.dart';
import '../features/driver/data/request/daftar_driver_request.dart';
import '../features/driver/presentation/daftar_driver/views/daftar_driver_lanjutan_view.dart';
import '../features/main/presentation/home_view.dart';

import '../features/driver/presentation/daftar_driver/views/daftar_driver_view.dart';

///
/// for getting routers that are present in the app
///

bool invalidAuth(List<String> listPath, GoRouterState state) =>
    listPath.contains(state.location);

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      // TODO: add your router here
      debugLogDiagnostics: true,
      initialLocation: HomeView.routeName,
      // refreshListenable: ref.watch(appStorageProvider),
      redirect: (context, state) {
        final user = ref.read(authServiceProvider).getCurrentUser;

        final isInvalidAuth = invalidAuth([
          DaftarDriverView.routeName,
          '/driver/lanjutan',
        ], state);

        if (isInvalidAuth) {
          return null;
        }

        if (user == null) {
          return LoginView.routeName;
        }
        return null;
      },
      routes: [
        GoRoute(
          path: HomeView.routeName,
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: LoginView.routeName,
          builder: (context, state) => const LoginView(),
        ),
        GoRoute(
          path: DaftarDriverView.routeName,
          builder: (context, state) => const DaftarDriverView(),
          routes: [
            GoRoute(
              path: DaftarDriverLanjutanView.routeName,
              redirect: (context, state) {
                if (state.extra.isNull ||
                    state.extra is! DaftarDriverFormAwal) {
                  return DaftarDriverView.routeName;
                }
                return null;
              },
              builder: (context, state) => DaftarDriverLanjutanView(
                daftarDriverFormAwal: state.extra as DaftarDriverFormAwal,
              ),
            ),
          ],
        ),
      ],
    );
  },
);

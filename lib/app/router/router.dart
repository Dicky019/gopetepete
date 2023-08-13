import 'package:flutter_application_1/app/features/driver/presentation/driver_active/driver_active_view.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../features/auth/domain/model/user.dart';
import '../features/driver/presentation/driver_profile/driver_profile_view.dart';
import '../utils/extension/dynamic_extension.dart';
import '../features/auth/application/auth_service_impl.dart';
import '../features/auth/presentation/login_view.dart';

import '../features/daftar_driver/data/request/daftar_driver_request.dart';
import '../features/daftar_driver/presentation/views/daftar_driver_lanjutan_view.dart';
import '../features/daftar_driver/presentation/views/daftar_driver_view.dart';
// import '../features/driver/data/request/daftar_driver_request.dart';
import '../features/driver/presentation/driver_verivication/driver_verification_view.dart';
import '../features/driver/presentation/driver_view.dart';
import '../features/home/presentation/home_view.dart';

///
/// for getting routers that are present in the app
///

bool invalidAuth(List<String> listPath, GoRouterState state) =>
    listPath.contains(state.location);

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: HomeView.routeName,
      // refreshListenable: ref.watch(appStorageProvider),
      redirect: (context, state) {
        final user = ref.read(authServiceProvider).getCurrentUser;

        final isInvalidAuth = invalidAuth([
          DaftarDriverView.routeName,
          DaftarDriverLanjutanView.path,
        ], state);

        if (isInvalidAuth) {
          return null;
        }

        if (user == null) {
          return LoginView.routeName;
        }

        if (user.userRole == UserRole.passenger) {
          return HomeView.routeName;
        }

        if (user.userRole == UserRole.driver) {
          if (!user.status) {
            return DriverVerificationView.routeName;
          }
          
          final isInvalidAuth = invalidAuth([
            DriverActiveView.path,
            DriverProfileView.path,
          ], state);

          if (isInvalidAuth) {
            return null;
          }

          return DriverView.routeName;
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
        GoRoute(
          path: DriverVerificationView.routeName,
          builder: (context, state) => const DriverVerificationView(),
        ),
        GoRoute(
          path: DriverView.routeName,
          builder: (context, state) => const DriverView(),
          routes: [
            GoRoute(
              path: DriverActiveView.routeName,
              builder: (context, state) => const DriverActiveView(),
            ),
            GoRoute(
              path: DriverProfileView.routeName,
              builder: (context, state) => const DriverProfileView(),
            ),
          ],
        ),
      ],
    );
  },
);

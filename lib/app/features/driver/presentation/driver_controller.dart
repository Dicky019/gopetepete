import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/features/auth/presentation/login_view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/module.dart';
import '../application/driver_service_impl.dart';
import 'driver_state.dart';

class DriverControllerNotifier extends StateNotifier<DriverState> {
  DriverControllerNotifier(this._driverService) : super(const DriverState());

  final DriverServiceImpl _driverService;

  toLanjutan(BuildContext context) {
    // TODO : Active Location
    // context.push(
    //   DaftarDriverLanjutanView.path,
    //   extra: driverFormAwal,
    // );
  }

  Future<void> logout(BuildContext context) async {
    EasyLoading.show(status: "Memuat");
    await _driverService.logout();
    // ignore: use_build_context_synchronously
    context.go(LoginView.routeName);
    EasyLoading.dismiss();
  }
}

final driverControllerProvider =
    StateNotifierProvider.autoDispose<DriverControllerNotifier, DriverState>(
  (ref) => DriverControllerNotifier(
    ref.read(driverServiceProvider),
  ),
);

enum FotoEnum { foto, fotoKtp, fotoMobil }

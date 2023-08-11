import 'dart:developer';

import 'package:flutter/widgets.dart';
import '../../auth/presentation/login_view.dart';
import 'driver_active/driver_active_view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/module.dart';
import '../application/driver_service_impl.dart';
import 'driver_state.dart';

class DriverControllerNotifier extends StateNotifier<DriverState> {
  DriverControllerNotifier(this._driverService) : super(const DriverState());

  final DriverServiceImpl _driverService;

  Future initLocation() async {
    EasyLoading.show(status: "Memuat");
    await _driverService.locationPermision();
    EasyLoading.dismiss();
  }

  Future toActive(BuildContext context) async {
    EasyLoading.show(status: "Memuat");

    // await _driverService.locationPermision();

    final updateLocation = await _driverService.updateLocation();

    updateLocation.when(
      success: (data) {
        context.push(
          DriverActiveView.path,
        );
      },
      failure: (error, stackTrace) {
        log("message update location");
      },
    );
    EasyLoading.dismiss();
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

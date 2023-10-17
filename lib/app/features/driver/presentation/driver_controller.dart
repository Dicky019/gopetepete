import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/features/auth/application/auth_service_impl.dart';
import 'package:flutter_application_1/app/features/driver/presentation/driver_view.dart';
import '../domain/model/driver.dart';
import '../../auth/presentation/login_view.dart';
import '../data/request/driver_request.dart';
import 'driver_active/driver_active_view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/module.dart';
import '../application/driver_service_impl.dart';
import 'driver_state.dart';

class DriverControllerNotifier extends StateNotifier<DriverState> {
  DriverControllerNotifier(this._driverService, this._authService)
      : super(const DriverState());

  final DriverServiceImpl _driverService;
  final AuthServiceImpl _authService;

  Future<bool> nonActive() {
    EasyLoading.show();
    final result = _driverService.nonActive();
    EasyLoading.dismiss();
    return result;
  }

  Future init() async {
    EasyLoading.show(status: "Memuat");
    final driver = await _driverService.getDriverApi();
    driver.whenOrNull(
      failure: (error, stackTrace) {
        error.whenOrNull(
          notFound: (reason) => log(reason),
        );
      },
    );
    await _driverService.locationPermision();
    EasyLoading.dismiss();
  }

  Future cekLogin(BuildContext context) async {
    EasyLoading.show(status: "Memuat");
    final result = await _authService.cekLogin();
    result.when(
      success: (data) {
        if (data.status) {
          context.replace(
            DriverView.routeName,
          );
          return;
        }
        EasyLoading.showSuccess("Akun Anda Belum Active");
      },
      failure: (error, stackTrace) {
        error.mapOrNull(
          defaultError: (value) => EasyLoading.showError(
            value.error,
          ),
        );
      },
    );
    EasyLoading.dismiss();
  }

  Stream<DocumentSnapshot<DriverLocation>> get streamLocation =>
      _driverService.streamLocation;

  Driver get getDriverLocal => _driverService.getDriverLocal;

  Future updatePenumpang(int jumlahPenumpang) async {
    EasyLoading.show(status: "Memuat");

    final updateLocation =
        await _driverService.updatePenumpang(jumlahPenumpang);

    updateLocation.whenOrNull(
      failure: (error, stackTrace) {
        log("message update location");
      },
    );

    EasyLoading.dismiss();
  }

  Future toActive(BuildContext context) async {
    EasyLoading.show(status: "Memuat");

    await _driverService.locationPermision();

    final updateLocation = await _driverService.updateLocation();

    updateLocation.when(
      success: (data) {
        initActive();
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

  initActive() {
    _driverService.getPositionStream.listen((locationData) {
      final latitude = locationData.latitude.toString();
      final longitude = locationData.longitude.toString();
      _driverService.streamLocationDriver(
        latitude,
        longitude,
      );
    });
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
    ref.read(authServiceProvider),
  ),
);

enum FotoEnum { foto, fotoKtp, fotoMobil }

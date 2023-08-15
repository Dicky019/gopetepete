import 'dart:async';
import 'dart:developer';
// import 'dart:developer';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/home_service_impl.dart';
import 'map_state.dart';

class MapControllerNotifier extends StateNotifier<MapState> {
  MapControllerNotifier(
    this._homeService,
  ) : super(const MapState());

  final HomeServiceImpl _homeService;

  final mapController = Completer<GoogleMapController>();

  CameraPosition initCamera = const CameraPosition(
    target: LatLng(-5.141473, 119.483019),
    zoom: 18,
  );

  void init() async {
    await initLocation();

    final resultDrivers = _homeService.getDrivers();
    resultDrivers.listen((event) async {
      final value = event.docs.map((e) => e.data()).toList();
      state = state.copyWith(value: AsyncData(value));
    });
  }

  Future initLocation() async {
    final location = await _homeService.getLastKnownPosition();

    if (location != null) {
      initCamera = CameraPosition(
        target: LatLng(location.latitude, location.longitude),
        zoom: 16,
      );
    }
  }

  Future toMyLocation() async {
    EasyLoading.show();
    final location = await _homeService.getLastKnownPosition();

    if (location != null) {
      await toLocation(location.latitude, location.longitude);
    }
    EasyLoading.dismiss();
    log(location.toString());
  }

  Future toLocation(double lat, double long) async {
    final GoogleMapController controller = await mapController.future;
    final myLocation = CameraPosition(
      target: LatLng(
        lat,
        long,
      ),
      zoom: 16,
    );
    controller.animateCamera(CameraUpdate.newCameraPosition(myLocation));
  }

  @override
  void dispose() async {
    (await mapController.future).dispose();
    super.dispose();
  }
}

final mapControllerProvider =
    StateNotifierProvider<MapControllerNotifier, MapState>((ref) {
  return MapControllerNotifier(
    ref.read(homeServiceProvider),
  )..init();
});

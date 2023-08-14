import 'dart:async';
// import 'dart:developer';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/home_service_impl.dart';
import 'map_state.dart';

class MapControllerNotifier extends StateNotifier<MapState> {
  MapControllerNotifier(
    this._homeService,
  ) : super(const MapState());

  final HomeServiceImpl _homeService;

  final Completer<GoogleMapController> mapController =
      Completer<GoogleMapController>();

  // -5.141473, 119.483019
  CameraPosition initCamera = const CameraPosition(
    target: LatLng(-5.141473, 119.483019),
    zoom: 18,
  );

  void init() async {
    // EasyLoading.show(status: "Memuat");
    await initLocation();
    final resultDrivers = _homeService.getDrivers();
    resultDrivers.listen((event) async {
      final value = event.docs.map((e) => e.data()).toList();
      // log(value.toString(),name: "resultDrivers");
      state = state.copyWith(value: AsyncData(value));
    });
    // EasyLoading.dismiss();
  }

  Future initLocation() async {
    final location = await _homeService.getLastKnownPosition();
    // log(location.toString(), name: "initLocation");

    if (location != null) {
      initCamera = CameraPosition(
        target: LatLng(location.latitude, location.longitude),
        zoom: 16,
      );
    }
  }

  Future toMyLocation() async {
    final location = await _homeService.getLastKnownPosition();
    // log(location.toString(), name: "initLocation");
    if (location != null) {
      final GoogleMapController controller = await mapController.future;
      final myLocation = CameraPosition(
        target: LatLng(
          location.latitude,
          location.longitude,
        ),
        zoom: 16,
      );
      controller.animateCamera(CameraUpdate.newCameraPosition(myLocation));
    }
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

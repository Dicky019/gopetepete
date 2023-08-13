import 'dart:async';
import 'dart:developer';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/home_service_impl.dart';
import '/app/utils/extension/dynamic_extension.dart';
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
    final result = await _homeService.getRutes();
    await result.whenOrNull(
      success: (data) async {
        log(data.toString(), name: "init");
        await initLocation();
        
        state = state.copyWith(value: AsyncData(data));
        log(state.toString(), name: "AsyncData");
      },
    );
  }

  Future initLocation() async {
    final location = await _homeService.getLastKnownPosition();
    log(location.toString(), name: "initLocation");

    if (location.isNotNull) {
      initCamera = CameraPosition(
        target: LatLng(location!.latitude, location.longitude),
        zoom: 18,
      );
    }
  }

  @override
  void dispose() async {
    (await mapController.future).dispose();
    super.dispose();
  }
}

final mapControllerProvider =
    StateNotifierProvider.autoDispose<MapControllerNotifier, MapState>((ref) {
  return MapControllerNotifier(
    ref.read(homeServiceProvider),
  )..init();
});

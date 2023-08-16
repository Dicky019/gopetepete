import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../driver/data/request/driver_request.dart';

class MapState {
  final AsyncValue<List<DriverLocation>> value;
  final int pageIndexNotifier;
  final LatLng? location;

  const MapState({
    this.value = const AsyncLoading(),
    this.pageIndexNotifier = 0,
    this.location,
  });

  MapState copyWith({
    AsyncValue<List<DriverLocation>>? value,
    int? pageIndexNotifier,
    LatLng? location,
  }) {
    return MapState(
      value: value ?? this.value,
      pageIndexNotifier: pageIndexNotifier ?? this.pageIndexNotifier,
      location: location ?? this.location,
    );
  }

  bool get isLoading => value.isLoading;
}

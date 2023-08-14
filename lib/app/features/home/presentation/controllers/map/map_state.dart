import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../driver/data/request/driver_request.dart';

class MapState {
  final AsyncValue<List<DriverLocation>> value;

  const MapState({
    this.value = const AsyncLoading(),
  });

  MapState copyWith({
    AsyncValue<List<DriverLocation>>? value,
  }) {
    return MapState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

import 'package:flutter_application_1/app/features/home/domain/model/rutes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapState {
  final AsyncValue<Rutes> value;

  const MapState({
    this.value = const AsyncLoading(),
  });

  MapState copyWith({
    AsyncValue<Rutes>? value,
  }) {
    return MapState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

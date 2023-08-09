import 'package:hooks_riverpod/hooks_riverpod.dart';

class DriverState {
  final AsyncValue<bool?> value;

  const DriverState({
    this.value = const AsyncData(null),
  });

  DriverState copyWith({
    AsyncValue<bool?>? value,
  }) {
    return DriverState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

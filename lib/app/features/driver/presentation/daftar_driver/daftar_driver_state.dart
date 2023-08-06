import 'package:hooks_riverpod/hooks_riverpod.dart';

class DaftarDriverState {
  final AsyncValue<bool?> value;

  const DaftarDriverState({
    this.value = const AsyncData(null),
  });

  DaftarDriverState copyWith({
    AsyncValue<bool?>? value,
  }) {
    return DaftarDriverState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

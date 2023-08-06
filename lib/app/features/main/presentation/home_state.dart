import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeState {
  final AsyncValue<bool?> value;

  const HomeState({
    this.value = const AsyncData(null),
  });

  HomeState copyWith({
    AsyncValue<bool?>? value,
  }) {
    return HomeState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

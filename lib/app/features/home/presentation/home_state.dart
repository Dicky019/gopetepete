import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeState {
  final AsyncValue<int> value;

  const HomeState({
    this.value = const AsyncData(0),
  });

  HomeState copyWith({
    AsyncValue<int>? value,
  }) {
    return HomeState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

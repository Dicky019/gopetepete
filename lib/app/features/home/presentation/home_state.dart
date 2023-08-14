import 'package:flutter_application_1/app/features/home/domain/model/rutes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeState {
  final AsyncValue<int> value;
  final AsyncValue<Rutes> rutes;

  const HomeState({
    this.value = const AsyncData(0),
    this.rutes = const AsyncLoading(),
  });

  HomeState copyWith({
    AsyncValue<int>? value,
    AsyncValue<Rutes>? rutes,
  }) {
    return HomeState(
      value: value ?? this.value,
      rutes: rutes ?? this.rutes,
    );
  }

  bool get isLoading => value.isLoading;
}

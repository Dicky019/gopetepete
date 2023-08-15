import '../domain/model/rute.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeState {
  final AsyncValue<int> value;
  final AsyncValue<List<Rute>> rutes;

  const HomeState({
    this.value = const AsyncData(0),
    this.rutes = const AsyncLoading(),
  });

  HomeState copyWith({
    AsyncValue<int>? value,
    AsyncValue<List<Rute>>? rutes,
  }) {
    return HomeState(
      value: value ?? this.value,
      rutes: rutes ?? this.rutes,
    );
  }

  bool get isLoading => value.isLoading;
}

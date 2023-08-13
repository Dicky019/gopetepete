import 'package:flutter_application_1/app/features/home/domain/model/rutes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchState {
  final AsyncValue<Rutes> value;

  const SearchState({
    this.value = const AsyncLoading(),
  });

  SearchState copyWith({
    AsyncValue<Rutes>? value,
  }) {
    return SearchState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

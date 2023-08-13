import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widget/search_widget.dart';
import 'widget/map_widget.dart';
import 'widget/person_widget.dart';
import 'home_state.dart';

class HomeControllerNotifier extends StateNotifier<HomeState> {
  HomeControllerNotifier() : super(const HomeState());

  final listHomeWidget = [
    const MapWidget(),
    const SearchWidget(),
    const PersonWidget(),
  ];

  changeIndex(int index) {
    state = state.copyWith(
      value: AsyncData(index),
    );
  }
}

final homeControllerProvider =
    StateNotifierProvider.autoDispose<HomeControllerNotifier, HomeState>((ref) {
  return HomeControllerNotifier();
});

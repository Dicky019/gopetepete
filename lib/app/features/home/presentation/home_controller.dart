import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/home_service_impl.dart';
import 'widget/search_widget.dart';
import 'widget/map_widget.dart';
import 'widget/person_widget.dart';
import 'home_state.dart';

class HomeControllerNotifier extends StateNotifier<HomeState> {
  HomeControllerNotifier(this._homeService) : super(const HomeState());

  final HomeServiceImpl _homeService;

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

  init() async {
    final resultRutes = await _homeService.getRutes();
    await resultRutes.whenOrNull(
      success: (data) async {
        log(data.toString(), name: "init");

        log(state.toString(), name: "AsyncData");
        state = state.copyWith(rutes: AsyncData(data));
      },
    );
  }
}

final homeControllerProvider =
    StateNotifierProvider<HomeControllerNotifier, HomeState>((ref) {
  return HomeControllerNotifier(
    ref.read(homeServiceProvider),
  )..init();
});

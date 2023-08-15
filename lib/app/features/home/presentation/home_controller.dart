import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/home_service_impl.dart';
import '../domain/model/rute.dart';
import 'widget/search_widget.dart';
import 'widget/map_widget.dart';
import 'widget/person_widget.dart';
import 'home_state.dart';

class HomeControllerNotifier extends StateNotifier<HomeState> {
  HomeControllerNotifier(this._homeService) : super(const HomeState());

  final HomeServiceImpl _homeService;
  final List<Rute> rutes = [];

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
        rutes.addAll(
          data.data,
        );
        state = state.copyWith(rutes: AsyncData(data.data));
        log(state.toString(), name: "AsyncData");
      },
    );
  }

  searchRutes(String query) async {
    final isEmpty = query.isEmpty;

    if (isEmpty) {
      state = state.copyWith(rutes: AsyncData(rutes));
    }

    final dataQuery = rutes.where((element) {
      final title = element.name.toLowerCase();
      final input = query.toLowerCase();

      return title.contains(input);
    });

    state = state.copyWith(rutes: AsyncData(dataQuery.toList()));
  }
}

final homeControllerProvider =
    StateNotifierProvider<HomeControllerNotifier, HomeState>((ref) {
  return HomeControllerNotifier(
    ref.read(homeServiceProvider),
  )..init();
});

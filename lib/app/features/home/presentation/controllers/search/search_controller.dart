import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/home_service_impl.dart';
import 'search_state.dart';

class SearchControllerNotifier extends StateNotifier<SearchState> {
  SearchControllerNotifier(
    this._homeService,
  ) : super(const SearchState());

  final HomeServiceImpl _homeService;
  final searchC = TextEditingController();

  void init() async {
    // EasyLoading.show(status: "Memuat");
    final result = await _homeService.getRutes();
    result.when(
      success: (data) {
        state = state.copyWith(value: AsyncData(data));
      },
      failure: (error, stackTrace) {},
    );
  }

  @override
  void dispose() async {
    searchC.dispose();
    super.dispose();
  }
}

final searchControllerProvider =
    StateNotifierProvider.autoDispose<SearchControllerNotifier, SearchState>(
        (ref) {
  return SearchControllerNotifier(
    ref.read(homeServiceProvider),
  )..init();
});

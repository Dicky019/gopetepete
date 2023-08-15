import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'search_state.dart';

class SearchControllerNotifier extends StateNotifier<SearchState> {
  SearchControllerNotifier() : super(const SearchState());

  final searchC = TextEditingController();

  @override
  void dispose() async {
    searchC.dispose();
    super.dispose();
  }
}

final searchControllerProvider =
    StateNotifierProvider<SearchControllerNotifier, SearchState>((ref) {
  return SearchControllerNotifier(
    // ref,
  );
});

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/main/presentation/home_view.dart';

extension XBuildContext on BuildContext {
  void goToHomeScreen() {
    goNamed(HomeView.routeName);
  }
}

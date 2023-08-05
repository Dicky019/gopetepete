import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/main/view/main_view.dart';

extension XBuildContext on BuildContext {
  void goToHomeScreen() {
    goNamed(MainView.routeName);
  }
}

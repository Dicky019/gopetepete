import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/app/features/home/presentation/home_view.dart';

extension XBuildContext on BuildContext {
  void goToHomeScreen() {
    goNamed(HomeView.routeName);
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/main/presentation/home_view.dart';

extension XBuildContext on BuildContext {
  void goToHomeScreen() {
    goNamed(HomeView.routeName);
  }
}

// SnackBar snackBar(BuildContext context,Color color, String title) {
//   final size = MediaQuery.of(context).size;
//   return SnackBar(
//     margin: EdgeInsets.only(top: size.height - 120.h),
//     content: Text(title),
//     backgroundColor: color,
//   );
// }

// extension AlertBuildContext on BuildContext {
//   // Colors.redAccent
//   void alertError(String title) {
//     ScaffoldMessenger.of(this).showSnackBar(snackBar(this,Colors.redAccent, title));
//   }
// }

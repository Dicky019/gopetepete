import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widget/driver_active_widget.dart';
import '../driver_view.dart';

class DriverActiveView extends ConsumerWidget {
  const DriverActiveView({Key? key}) : super(key: key);

  static const routeName = 'active';
  static const path = '${DriverView.routeName}/active';

  @override
  Widget build(context, ref) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Active Location"),
      ),
      body: const DriverActiveWidget(),
    );
  }
}

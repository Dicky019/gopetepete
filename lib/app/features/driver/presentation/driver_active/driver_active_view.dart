import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/driver/presentation/driver_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widget/driver_active_widget.dart';
import '../driver_view.dart';

class DriverActiveView extends ConsumerWidget {
  const DriverActiveView({Key? key}) : super(key: key);

  static const routeName = 'active';
  static const path = '${DriverView.routeName}/active';

  @override
  Widget build(context, ref) {
    return WillPopScope(
      onWillPop: ref.read(driverControllerProvider.notifier).nonActive,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Active Location"),
        ),
        body: const DriverActiveWidget(),
      ),
    );
  }
}

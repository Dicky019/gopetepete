import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widget/driver_widget.dart';
import 'driver_controller.dart';

class DriverView extends ConsumerWidget {
  const DriverView({Key? key}) : super(key: key);

  static const routeName = '/driver';

  @override
  Widget build(context, ref) {
    final controller = ref.read(driverControllerProvider.notifier);
    controller.initLocation();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Driver"),
        actions: [
          IconButton(
            onPressed: () => controller.logout(context),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: const DriverWidget(),
    );
  }
}

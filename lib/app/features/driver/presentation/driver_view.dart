import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widget/driver_widget.dart';
import 'driver_controller.dart';

class DriverView extends ConsumerStatefulWidget {
  const DriverView({super.key});
  static const routeName = '/driver';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DriverViewState();
}

class _DriverViewState extends ConsumerState<DriverView> {
  late DriverControllerNotifier controller =
      ref.read(driverControllerProvider.notifier);
  @override
  void initState() {
    controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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

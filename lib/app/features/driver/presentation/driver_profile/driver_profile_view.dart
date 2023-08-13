import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../driver_view.dart';
import '../driver_controller.dart';
import '../../widget/driver_profile_widget.dart';

class DriverProfileView extends ConsumerWidget {
  static const routeName = 'profile';
  static const path = '${DriverView.routeName}/profile';

  const DriverProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(driverControllerProvider.notifier);
    final getDriverLocal = controller.getDriverLocal;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: DriverProfileWidget(driver: getDriverLocal),
    );
  }
}

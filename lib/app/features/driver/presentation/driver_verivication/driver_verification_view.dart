import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widget/driver_verification_widget.dart';
import '../driver_controller.dart';

// import '../driver_view.dart';

class DriverVerificationView extends ConsumerWidget {
  const DriverVerificationView({Key? key}) : super(key: key);

  static const routeName = '/driver-verification';
  // static const path = '${DriverView.routeName}/verification';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(driverControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verifikasi"),
        actions: [
          IconButton(
            onPressed: () => controller.logout(context),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: const DriverVerificationWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/driver/widget/driver_verification_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../driver_view.dart';

class DriverVerificationView extends ConsumerWidget {
  /// TODO add your comment here
  const DriverVerificationView({Key? key}) : super(key: key);

  static const routeName = '/driver-verification';
  // static const path = '${DriverView.routeName}/verification';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(routeName),
      ),
      body: const DriverVerificationWidget(),
    );
  }
}

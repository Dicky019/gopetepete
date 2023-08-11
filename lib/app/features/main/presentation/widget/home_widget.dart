import 'package:flutter/material.dart';
// import 'package:flutter_application_1/app/features/main/presentation/home_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../home_view.dart';

class HomeWidget extends ConsumerWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    /// TODO add your comment here
    // final controller = ref.read(homeControllerProvider.notifier);
    // final state = ref.read(homeControllerProvider);
    return const Center(
      child: Text(HomeView.routeName),
    );
  }
}

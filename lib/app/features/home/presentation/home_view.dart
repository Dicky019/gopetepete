import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widget/home_widget.dart';
import 'home_controller.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(homeControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () => controller.logout(context),
            icon: const Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: const HomeWidget(),
    );
  }
}

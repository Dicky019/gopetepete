import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controller/login_controller.dart';

class LoginWidget extends ConsumerWidget {
  /// TODO add your comment here
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(loginControllerProvider.notifier);
    final state = ref.read(loginControllerProvider);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(),
            TextFormField(),
            ElevatedButton(
              onPressed: state.isLoading ? null : controller.fetchLogin,
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}

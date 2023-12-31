import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widget/login_widget.dart';

class LoginView extends ConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return const Scaffold(
      body: SafeArea(
        child: LoginWidget(),
      ),
    );
  }
}

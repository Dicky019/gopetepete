import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/auth/widget/login_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginView extends ConsumerWidget {
  /// TODO add your comment here
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: LoginWidget(),
    );
  }
}

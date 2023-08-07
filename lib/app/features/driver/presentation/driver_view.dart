import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DriverView extends ConsumerWidget {
  /// TODO add your comment here
  const DriverView({Key? key}) : super(key: key);

  static const routeName = '/driver';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
      ),
    );
  }
}

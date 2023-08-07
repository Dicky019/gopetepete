import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'widget/home_widget.dart';

class HomeView extends ConsumerWidget {
  /// TODO add your comment here
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(body: HomeWidget());
  }
}

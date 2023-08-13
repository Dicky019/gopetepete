import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/widgets/state/state_widget.dart';
import 'home_controller.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);

    return StateWidget<int>(
      stream: state.value,
      data: (data) {
        return Scaffold(
          body: controller.listHomeWidget[data],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 8,
            // backgroundColor: Theme.of(context).primaryColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.map),
                activeIcon: Icon(CupertinoIcons.map_fill),
                label: 'Map',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                activeIcon: Icon(CupertinoIcons.person_fill),
                label: 'Profile',
              ),
            ],
            currentIndex: data,
            onTap: controller.changeIndex,
          ),
        );
      },
    );
  }
}

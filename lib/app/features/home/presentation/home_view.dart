import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/home/presentation/controllers/map/map_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/widgets/state/state_widget.dart';
import 'home_controller.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(homeControllerProvider.notifier);
    final mapController = ref.read(mapControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);

    return StateWidget<int>(
      stream: state.value,
      data: (data) {
        return Scaffold(
          body: controller.listHomeWidget[data],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: mapController.toMyLocation,
            child: const Icon(
              Icons.location_searching,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 8,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.map),
                activeIcon: Icon(CupertinoIcons.map_fill),
                label: 'Map',
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

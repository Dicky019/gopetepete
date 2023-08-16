import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/widgets/button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../controllers/map/map_controller.dart';
import '../controllers/search/search_controller.dart';
import '../home_controller.dart';
import 'search_widget.dart';

WoltModalSheetPage driversModal(BuildContext modalSheetContext) {
  return WoltModalSheetPage.withSingleChild(
    backgroundColor: Theme.of(modalSheetContext).colorScheme.surface,
    mainContentPadding: EdgeInsetsDirectional.zero,
    stickyActionBar: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Consumer(builder: (context, ref, _) {
        final mapController = ref.read(mapControllerProvider.notifier);
        return ButtonWidget(
          onTap: () {
            Navigator.of(modalSheetContext).pop();
            mapController.pageIndexNotifier.value = 0;
          },
          text: 'Close',
        );
      }),
    ),
    pageTitlePaddingTop: 0,
    isTopBarVisibleWhenScrolled: false,
    child: SizedBox(
      height: MediaQuery.sizeOf(modalSheetContext).height * 0.4,
      child: Consumer(builder: (context, ref, _) {
        final controller = ref.read(searchControllerProvider.notifier);
        final homeController = ref.read(homeControllerProvider.notifier);
        final mapController = ref.read(mapControllerProvider.notifier);
        final homeState = ref.watch(
          homeControllerProvider.select((value) => value.rutes),
        );
        controller.searchC.addListener(
          () => homeController.searchRutes(controller.searchC.text),
        );
        return SearchWidget(
          mapController: mapController,
          controller: controller,
          homeController: homeController,
          homeState: homeState,
        );
      }),
    ),
  );
}

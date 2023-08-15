import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/home/presentation/controllers/map/map_controller.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/widgets/form/text_field.dart';
import '/app/widgets/state/state_widget.dart';
import '/app/constants/theme/app_size.dart';
import '../../domain/model/rute.dart';
import '../controllers/search/search_controller.dart';
import '../home_controller.dart';

class SearchWidget extends ConsumerWidget {
  const SearchWidget({super.key});

  @override
  Widget build(context, ref) {
    final controller = ref.read(searchControllerProvider.notifier);
    // .searchRutes(searchC.text)
    final homeController = ref.read(homeControllerProvider.notifier);
    final mapController = ref.read(mapControllerProvider.notifier);
    final homeState = ref.watch(
      homeControllerProvider.select((value) => value.rutes),
    );
    controller.searchC.addListener(
      () => homeController.searchRutes(controller.searchC.text),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text("Search"),
        ),
        body: StateWidget<List<Rute>>(
          stream: homeState,
          data: (rutes) {
            return Column(
              children: [
                Gap.h12,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: TextFieldWidget.search(
                    controller: controller.searchC,
                    hintText: "Search...",
                    // onChange: ,
                  ),
                ),
                Gap.h12,
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      final rute = rutes[index];
                      final kode = rute.kode;
                      final name = rute.name;
                      final nomor = index + 1;
                      final locations = rute.locations;

                      final color = HexColor(rute.color.replaceFirst("#", ""));
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: color,
                          child: Text(
                            "$nomor",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).shadowColor,
                            ),
                          ),
                        ),
                        title: Text(name),
                        subtitle: Text(kode),
                        trailing: IconButton(
                            onPressed: () async {
                              final midel = (locations.points.length / 2);
                              final location = locations.points[midel.toInt()];
                              homeController.changeIndex(0);
                              controller.searchC.text = name;
                              homeController.searchRutes(name);
                              mapController.initCamera = CameraPosition(
                                  target: LatLng(
                                    location.latitude,
                                    location.longitude,
                                  ),
                                  zoom: 15);
                            },
                            icon: const Icon(CupertinoIcons.arrow_right)),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: rutes.length,
                  ),
                ),
              ],
            );
          },
        ));
  }
}

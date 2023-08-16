// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/map/map_controller.dart';

import '../../domain/model/rute.dart';
import '../controllers/search/search_controller.dart';
import '../home_controller.dart';
import '/app/constants/theme/app_size.dart';
import '/app/widgets/form/text_field.dart';
import '/app/widgets/state/state_widget.dart';

class SearchWidget extends StatelessWidget {
  final MapControllerNotifier mapController;
  final AsyncValue<List<Rute>> homeState;
  final HomeControllerNotifier homeController;
  final SearchControllerNotifier controller;

  const SearchWidget({
    Key? key,
    required this.mapController,
    required this.homeState,
    required this.homeController,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateWidget<List<Rute>>(
      stream: homeState,
      data: (rutes) {
        return Column(
          children: [
            // Gap.h12,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: TextFieldWidget.search(
                controller: controller.searchC,
                hintText: "Search",
                // onChange: ,
              ),
            ),
            Gap.h12,
            Expanded(
              child: rutes.isEmpty
                  ? Center(
                      child: Text(
                        "Not Found",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        final rute = rutes[index];
                        final kode = rute.kode;
                        final name = rute.name;
                        final nomor = index + 1;
                        final locations = rute.locations;

                        final color =
                            HexColor(rute.color.replaceFirst("#", ""));
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
                                zoom: 15,
                              );
                            },
                            icon: const Icon(CupertinoIcons.arrow_right),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: rutes.length,
                    ),
            ),
          ],
        );
      },
    );
  }
}

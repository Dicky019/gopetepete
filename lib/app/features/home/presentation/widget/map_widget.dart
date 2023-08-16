import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/constants/theme/app_size.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/widgets/state/state_widget.dart';
import '../../../driver/data/request/driver_request.dart';
import '../../domain/model/rute.dart';
import '../home_controller.dart';
import '../../presentation/controllers/map/map_state.dart';
import '../controllers/map/map_controller.dart';

class MapWidget extends ConsumerWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(mapControllerProvider.notifier);
    final state = ref.watch(mapControllerProvider);

    final homeState = ref.watch(
      homeControllerProvider.select((value) => value.rutes),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
        actions: [
          IconButton(
            onPressed: () {
              controller.showSearchModal(context);
            },
            icon: const Icon(
              CupertinoIcons.search,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          GoogleMapWidget(
            homeState: homeState,
            state: state,
            controller: controller,
          ),
          Positioned(
            right: 16.w,
            left: 16.w,
            bottom: 16.w,
            child: Container(
              height: 200.h,
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? Theme.of(context).colorScheme.secondary.withOpacity(0.2)
                    : Theme.of(context).colorScheme.background.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16).r,
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 1.5.w,
                ),
              ),
              child: Column(
                children: [
                  Gap.h12,
                  Text(
                    "Driver 3 Terdekat",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Divider(),
                  Gap.h4,
                  const Expanded(
                    child: DriversWidget(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DriversWidget extends ConsumerWidget {
  const DriversWidget({
    super.key,
  });

  double calculateDistance(
    LatLng latLng1,
    LatLng latLng2,
  ) {
    double lat1 = latLng1.latitude;
    double lon1 = latLng1.longitude;
    double lat2 = latLng2.latitude;
    double lon2 = latLng2.longitude;
    var p = 0.017453292519943295;
    var a = 0.5 -
        math.cos((lat2 - lat1) * p) / 2 +
        math.cos(lat1 * p) *
            math.cos(lat2 * p) *
            (1 - math.cos((lon2 - lon1) * p)) /
            2;
    return 12742 * math.asin(math.sqrt(a));
  }

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(mapControllerProvider.notifier);
    final state = ref.watch(mapControllerProvider);

    return StateWidget<List<DriverLocation>>(
        stream: state.value,
        data: (drivers) {
          drivers.sort((a, b) {
            final latlngAwal = state.location!;
            final latlngA = LatLng(
              double.parse(a.lat),
              double.parse(a.long),
            );
            final latlngB = LatLng(
              double.parse(b.lat),
              double.parse(b.long),
            );
            final distaceA = calculateDistance(latlngAwal, latlngA);
            final distaceB = calculateDistance(latlngAwal, latlngB);
            return distaceA.compareTo(distaceB);
          });
          return ListView.separated(
            itemBuilder: (context, index) {
              final driver = drivers[index];

              final latlngAkhir = LatLng(
                double.parse(driver.lat),
                double.parse(driver.long),
              );
              final latlngAwal = state.location!;

              final distace = calculateDistance(latlngAwal, latlngAkhir);

              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  borderRadius: BorderRadius.circular(16).r,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Assets.images.car.image(),
                  ),
                  title: Text(
                    "Penumpang ${driver.jumlahPenumpang ?? 0} / ${driver.maxPenumpang} Max",
                  ),
                  subtitle: Text(
                    "Jarak ${distace.toStringAsFixed(2)} KM",
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      controller.toDriver(
                        latlngAkhir.latitude,
                        latlngAkhir.longitude,
                        driver.id,
                      );
                    },
                    icon: Icon(
                      CupertinoIcons.arrow_right,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: drivers.length > 3 ? 3 : drivers.length,
          );
        });
  }
}

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    super.key,
    required this.homeState,
    required this.state,
    required this.controller,
  });

  final AsyncValue<List<Rute>> homeState;
  final MapState state;
  final MapControllerNotifier controller;

  @override
  Widget build(BuildContext context) {
    return StateWidget<List<Rute>>(
      stream: homeState,
      data: (rutes) => StateWidget<List<DriverLocation>>(
        stream: state.value,
        data: (data) {
          return GoogleMap(
            initialCameraPosition: controller.initCamera,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            mapType: MapType.terrain,
            polylines: rutes.map((e) => e.locations).toSet(),
            markers: data.map((e) {
              return Marker(
                markerId: MarkerId(e.id),
                visible: e.visible,
                position: LatLng(double.parse(e.lat), double.parse(e.long)),
                icon: controller.markerIcon,
                onTap: () {
                  // log(e.id);
                },
                infoWindow: InfoWindow(
                  title: "Penumpang ${e.jumlahPenumpang}",
                  snippet: "Max ${e.maxPenumpang}",
                ),
              );
            }).toSet(),
            onMapCreated: (mapController) async {
              if (controller.mapController.isCompleted) {
                controller.mapController2 = mapController;
                return;
              }
              controller.mapController.complete(mapController);
            },
          );
        },
      ),
    );
  }
}

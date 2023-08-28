import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/constants/theme/app_size.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
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
                    "Driver Terdekat",
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

  double _distanceBetween(
    LatLng start,
    LatLng end,
  ) {
    double startLatitude = start.latitude;
    double startLongitude = start.longitude;
    double endLatitude = end.latitude;
    double endLongitude = end.longitude;
    return Geolocator.distanceBetween(
        startLatitude, startLongitude, endLatitude, endLongitude);
  }

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(mapControllerProvider.notifier);
    final state = ref.watch(mapControllerProvider);

    return StateWidget<List<DriverLocation>>(
      stream: state.value,
      data: (drivers) {
        final driversVisibel =
            drivers.where((element) => element.visible == true).toList();

        driversVisibel.sort((a, b) {
          final latlngAwal = state.location!;
          final latlngA = LatLng(
            double.parse(a.lat),
            double.parse(a.long),
          );
          final latlngB = LatLng(
            double.parse(b.lat),
            double.parse(b.long),
          );

          final distaceA = _distanceBetween(latlngAwal, latlngA);
          final distaceB = _distanceBetween(latlngAwal, latlngB);

          return distaceA.compareTo(distaceB);
        });
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jumlah Driver",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  driversVisibel.length.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Gap.h8,
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final driver = driversVisibel[index];

                  final latlngAkhir = LatLng(
                    double.parse(driver.lat),
                    double.parse(driver.long),
                  );
                  final latlngAwal = state.location!;

                  final distace = _distanceBetween(
                    latlngAwal,
                    latlngAkhir,
                  );

                  final distaceText = switch (distace) {
                    >= 1000.0 => "${(distace * 0.001).toStringAsFixed(2)} KM",
                    _ => "${distace.toStringAsFixed(2)} M"
                  };

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
                        "Jarak $distaceText",
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
                itemCount: driversVisibel.length,
              ),
            ),
          ],
        );
      },
    );
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

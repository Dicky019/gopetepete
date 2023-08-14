import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/home/presentation/home_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../driver/data/request/driver_request.dart';
import '/app/widgets/state/state_widget.dart';
import '../../domain/model/rutes.dart';
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
      ),
      body: StateWidget<Rutes>(
        stream: homeState,
        data: (rutes) => StateWidget<List<DriverLocation>>(
          stream: state.value,
          data: (data) {
            log(data.toString(), name: "Driver");
            return GoogleMap(
              initialCameraPosition: controller.initCamera,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              polylines: rutes.locations,
              markers: data
                  .map(
                    (e) => Marker(
                      markerId: MarkerId(e.id),
                      position:
                          LatLng(double.parse(e.lat), double.parse(e.long)),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueAzure,
                      ),
                      // consumeTapEvents: true,
                      infoWindow: InfoWindow(
                        title: "Penumpang ${e.jumlahPenumpang}",
                        snippet: "Max ${e.maxPenumpang}",
                      ),
                    ),
                  )
                  .toSet(),
              onMapCreated: (GoogleMapController mapController) {
                if (controller.mapController.isCompleted) {
                  return;
                }
                controller.mapController.complete(mapController);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.toMyLocation,
        child: const Icon(Icons.location_searching),
      ),
    );
  }
}

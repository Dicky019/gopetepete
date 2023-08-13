import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/widgets/state/state_widget.dart';
import '../../domain/model/rutes.dart';
import '../controllers/map/map_controller.dart';

class MapWidget extends ConsumerWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(mapControllerProvider.notifier);
    final state = ref.watch(mapControllerProvider);
     

    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
      ),
      body: StateWidget<Rutes>(
        stream: state.value,
        data: (data) => GoogleMap(
          initialCameraPosition: controller.initCamera,
          myLocationEnabled: true,
          polylines: data.locations,
          onMapCreated: (GoogleMapController mapController) {
            if (controller.mapController.isCompleted) {
              return;
            }
            controller.mapController.complete(mapController);
          },
        ),
      ),
    );
  }
}

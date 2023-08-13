import 'dart:async';

import 'package:flutter/material.dart';
import '/app/constants/theme/app_size.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeWidget extends ConsumerWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    /// TODO add your comment here
    // final controller = ref.read(homeControllerProvider.notifier);
    // final state = ref.read(homeControllerProvider);
    return Column(
      children: [
        const Expanded(child: MapSample()),
        Gap.h48,
      ],
    );
  }
}

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  // GoogleMapController _mapController = GoogleMapController.init(id, initialCameraPosition, googleMapState);
  // -5.141473, 119.483019
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-5.141473, 119.483019),
    zoom: 18,
  );

  @override
  void dispose() async {
    (await _controller.future).dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        myLocationEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}

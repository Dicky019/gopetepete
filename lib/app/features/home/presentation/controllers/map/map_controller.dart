import 'dart:async';
// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'dart:ui' as ui;
import '../../../application/home_service_impl.dart';
import '../../widget/search_modal.dart';
import 'map_state.dart';

class MapControllerNotifier extends StateNotifier<MapState> {
  MapControllerNotifier(
    this._homeService,
  ) : super(const MapState());

  final HomeServiceImpl _homeService;

  var mapController = Completer<GoogleMapController>();
  GoogleMapController? mapController2;

  CameraPosition initCamera = const CameraPosition(
    target: LatLng(-5.141473, 119.483019),
    zoom: 18,
  );

  BitmapDescriptor markerIcon =
      BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue);

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  void init() async {
    await initLocation();
    final icon = await getBytesFromAsset('assets/images/car.png', 100);
    markerIcon = BitmapDescriptor.fromBytes(icon);

    final resultDrivers = _homeService.streamDrivers();

    resultDrivers.listen((event) async {
      final value = event.docs.map((e) => e.data()).toList();
      state = state.copyWith(value: AsyncData(value));
    });
  }

  Future initLocation() async {
    final location = await _homeService.getLastKnownPosition();

    if (location != null) {
      initCamera = CameraPosition(
        target: LatLng(location.latitude, location.longitude),
        zoom: 16,
      );
    }
    _homeService.getPositionStream.listen((event) {
      if (event != null) {
        state = state.copyWith(
          location: LatLng(
            event.latitude,
            event.longitude,
          ),
        );
      } else {
        state = state.copyWith(location: initCamera.target);
      }
    });
  }

  Future toMyLocation() async {
    EasyLoading.show();
    await toLocation(state.location!.latitude, state.location!.longitude);
    EasyLoading.dismiss();
  }

  Future toLocation(double lat, double long) async {
    final GoogleMapController controller = await mapController.future;
    final myLocation = CameraPosition(
      target: LatLng(
        lat,
        long,
      ),
      zoom: 16,
    );
    if (mapController2 != null) {
      mapController2!.animateCamera(CameraUpdate.newCameraPosition(myLocation));
      return;
    }
    controller.animateCamera(CameraUpdate.newCameraPosition(myLocation));
  }

  Future toDriver(double lat, double long, String id) async {
    final GoogleMapController controller = await mapController.future;
    await toLocation(lat, long);
    if (mapController2 != null) {
      mapController2!.showMarkerInfoWindow(MarkerId(id));
      return;
    }
    controller.showMarkerInfoWindow(MarkerId(id));
  }

  final pageIndexNotifier = ValueNotifier(0);

  showSearchModal(BuildContext context) {
    WoltModalSheet.show<void>(
      pageIndexNotifier: pageIndexNotifier,
      context: context,
      pageListBuilder: (modalSheetContext) {
        return [
          searchModal(modalSheetContext),
        ];
      },
      modalTypeBuilder: (context) {
        final size = MediaQuery.of(context).size.width;
        if (size < 768) {
          return WoltModalType.bottomSheet;
        } else {
          return WoltModalType.dialog;
        }
      },
      barrierDismissible: false,
      onModalDismissedWithBarrierTap: () {
        pageIndexNotifier.value = 0;
      },
      maxDialogWidth: 560,
      minDialogWidth: 400,
      minPageHeight: 0.4,
      maxPageHeight: 0.9,
    );
  }

  @override
  void dispose() async {
    (await mapController.future).dispose();
    pageIndexNotifier.dispose();
    mapController2?.dispose();
    super.dispose();
  }
}

final mapControllerProvider =
    StateNotifierProvider<MapControllerNotifier, MapState>((ref) {
  return MapControllerNotifier(
    ref.read(homeServiceProvider),
  )..init();
});

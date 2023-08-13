import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeolocationService {
  Stream<Position> get getPositionStream => Geolocator.getPositionStream();

  Future<void> locationPermision() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }
  }

  Future<Position?> getLastKnownPosition() async {
    await locationPermision();
    return await Geolocator.getLastKnownPosition();
  }
}

final geoLocationServiceProvider = Provider<GeolocationService>(
  (_) => GeolocationService(),
);

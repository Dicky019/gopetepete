import 'dart:developer';

import 'package:location/location.dart';

import '/app/services/remote/config/result.dart';
import '../../auth/data/repository/auth_repository_impl.dart';
import '../data/request/driver_request.dart';
import '../data/repository/driver_repository_impl.dart';
import 'driver_service.dart';

class DriverServiceImpl implements DriverService {
  final DriverRepositoryImpl _driverRepository;
  final AuthRepositoryImpl _authRepository;
  final _location = Location.instance;
  DriverServiceImpl(this._driverRepository, this._authRepository);

  @override
  Future<Result<void>> updateLocation() async {
    final id = _authRepository.getUser!.id;

    log(id);

    // await _location.changeSettings(accuracy: LocationAccuracy.navigation);

    final locationData = await _location.getLocation();

    final driverLocation = DriverLocationRequest(
      id: id,
      lat: locationData.latitude.toString(),
      long: locationData.longitude.toString(),
    );

    return _driverRepository.updateLocation(driverLocation);
  }

  @override
  Future<void> logout() {
    return _authRepository.logout();
  }

  @override
  Future<void> locationPermision() async {
    bool serviceEnabled = false;
    PermissionStatus permissionGranted;

    serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }
}

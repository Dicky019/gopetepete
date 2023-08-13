import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import '/app/services/location/geolocation_service.dart';

import '/app/services/remote/config/result.dart';
import '../../auth/data/repository/auth_repository_impl.dart';
import '../data/request/driver_request.dart';
import '../data/repository/driver_repository_impl.dart';
import '../domain/model/driver.dart';
import 'mapper/driver_mapper.dart';
import 'driver_service.dart';

class DriverServiceImpl implements DriverService {
  final DriverRepositoryImpl _driverRepository;
  final AuthRepositoryImpl _authRepository;
  final GeolocationService _geolocationService;

  DriverServiceImpl(
    this._driverRepository,
    this._authRepository,
    this._geolocationService,
  );

  @override
  Future<Result<void>> updateLocation() async {
    final locationData = await _geolocationService.getLastKnownPosition();

    log(locationData.toString(), name: "updateLocation");

    final driverLocation = DriverLocation(
      id: getDriverLocal.id,
      lat: locationData?.latitude.toString() ?? "",
      long: locationData?.longitude.toString() ?? "",
      maxPenumpang: getDriverLocal.maxPenumpang,
      jumlahPenumpang: 0,
    );

    return _driverRepository.updateLocation(
      getDriverLocal.id,
      driverLocation.toJson(),
    );
  }

  Future<void> streamLocationDriver(String latitude, String longitude) async {
    if (_driverRepository.getDriver != null) {
      await _driverRepository.updateLocation(getDriverLocal.id, {
        "lat": latitude,
        "long": longitude,
      });
    }
  }

  @override
  Future<void> logout() {
    _driverRepository.deleteDriver();
    return _authRepository.logout();
  }

  Stream get getPositionStream => _geolocationService.getPositionStream;

  @override
  Future<void> locationPermision() => _geolocationService.locationPermision();

  @override
  Future<Result<void>> getDriverApi() async {
    final id = _authRepository.getUser?.id;
    final response = await _driverRepository.getDriverApi(id ?? "");
    final result = DriverMapper.mapToUserResult(response);

    return result.when(
      success: (driver) {
        _driverRepository.saveDriver(driver);
        return const Result.success(null);
      },
      failure: (error, stackTrace) => Result.failure(error, stackTrace),
    );
  }

  @override
  Driver get getDriverLocal => _driverRepository.getDriver!;

  @override
  Stream<DocumentSnapshot<DriverLocation>> get streamLocation {
    return _driverRepository.streamLocation(getDriverLocal.id);
  }

  @override
  Future<Result<void>> updatePenumpang(int jumlahPenumpang) {
    log(jumlahPenumpang.toString(), name: "jumlahPenumpang");
    return _driverRepository.updatePenumpang(
      getDriverLocal.id,
      jumlahPenumpang,
    );
  }
}

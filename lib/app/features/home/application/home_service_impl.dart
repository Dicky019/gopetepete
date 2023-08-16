import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../driver/data/request/driver_request.dart';
import '../../driver/application/mapper/driver_mapper.dart';
import '../../driver/domain/model/driver.dart';
import '/app/services/remote/config/result.dart';
import '/app/services/location/geolocation_service.dart';

import '../data/repository/module.dart';
import '../domain/repository/home_repository.dart';
import '../domain/model/rute.dart';
import '../domain/model/rutes.dart';
import 'mapper/rute_mapper.dart';
import 'home_service.dart';

class HomeServiceImpl implements HomeService {
  final HomeRepository _homeRepository;
  final GeolocationService _geolocationService;

  HomeServiceImpl(this._homeRepository, this._geolocationService);

  Future<void> locationPermision() {
    return _geolocationService.locationPermision();
  }

  Stream<Position?> get getPositionStream {
    return _geolocationService.getPositionStream;
  }

  Future<Position?> getLastKnownPosition() async {
    await locationPermision();
    return await _geolocationService.getLastKnownPosition();
  }

  @override
  Future<Result<Driver>> getDriver(String id) async {
    final response = await _homeRepository.getDriver(id);
    return DriverMapper.mapToUserResult(response);
  }

  @override
  Stream<QuerySnapshot<DriverLocation>> streamDrivers() {
    return _homeRepository.streamDrivers();
  }

  @override
  Future<Result<Rute>> getRute(String id) async {
    final rute = await _homeRepository.getRute(id);
    return HomeMapper.mapToRuteResult(rute);
  }

  @override
  Future<Result<Rutes>> getRutes() async {
    final rutes = await _homeRepository.getRutes();
    return HomeMapper.mapToRutesResult(rutes);
  }
}

final homeServiceProvider = Provider<HomeServiceImpl>((ref) {
  return HomeServiceImpl(
    ref.read(homeRepositoryProvider),
    ref.read(geoLocationServiceProvider),
  );
});

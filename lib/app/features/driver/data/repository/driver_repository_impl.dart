import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/app/features/driver/domain/model/driver.dart';

import '/app/services/remote/config/config.dart';
import '../../domain/repository/driver_repository.dart';
import '../request/driver_request.dart';
import '../response/driver_response.dart';
import '../source/local_impl.dart';
import '../source/network_impl.dart';

class DriverRepositoryImpl implements DriverRepository {
  final NetworkImpl _network;
  final LocalImpl _local;
  DriverRepositoryImpl(this._network, this._local);

  @override
  Future<Result<String>> updateLocation(
    String id,
    Map<String, dynamic> driverLocation,
  ) {
    return _network.updateLocation(id, driverLocation);
  }

  @override
  Future<Result<DriverResponse>> getDriverApi(String id) {
    return _network.getDriver(id);
  }

  @override
  Driver? get getDriver => _local.getDriver;

  @override
  Future<void> saveDriver(Driver driver) => _local.saveDriver(driver);

  @override
  Stream<DocumentSnapshot<DriverLocation>> streamLocation(String id) =>
      _network.streamLocation(id);

  @override
  Future<Result<String>> updatePenumpang(
    String id,
    int jumlahPenumpang,
  ) {
    return _network.updatePenumpang(id, jumlahPenumpang);
  }
  
  @override
  Future<void> deleteDriver() => _local.deleteDriver();
}

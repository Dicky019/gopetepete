import 'package:cloud_firestore/cloud_firestore.dart';

import '../data/request/driver_request.dart';
import '../domain/model/driver.dart';
import '/app/services/remote/config/result.dart';

abstract class DriverService {
  Future<Result<void>> updateLocation();
  Future<Result<void>> getDriverApi();
  Driver get getDriverLocal;
  Future<void> logout();
  Future<void> locationPermision();
  Stream<DocumentSnapshot<DriverLocation>> get streamLocation;
  Future<Result<void>> updatePenumpang(int jumlahPenumpang);
}

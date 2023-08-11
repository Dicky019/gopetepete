import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/driver.dart';
import '/app/services/remote/config/result.dart';
import '../../data/request/driver_request.dart';
import '../../data/response/driver_response.dart';

abstract class DriverRepository {
  Future<Result<String>> updateLocation(
    String id,
    Map<String, dynamic> driverLocation,
  );
  Future<Result<DriverResponse>> getDriverApi(String id);

  Driver? get getDriver;
  Future<void> saveDriver(Driver driver);
  Future<void> deleteDriver();

  Stream<DocumentSnapshot<DriverLocation>> streamLocation(String id);
  Future<Result<String>> updatePenumpang(String id, int jumlahPenumpang);
}

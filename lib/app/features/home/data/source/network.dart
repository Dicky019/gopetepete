import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../driver/data/request/driver_request.dart';
import '../../../driver/data/response/driver_response.dart';
import '../response/rute_response.dart';
import '../response/rutes_response.dart';
import '/app/services/remote/config/result.dart';

abstract class Network {
  Future<Result<RutesResponse>> getRutes();
  Future<Result<RuteResponse>> getRute(String id);

  Stream<QuerySnapshot<DriverLocation>> streamDrivers();
  Future<Result<DriverResponse>> getDriver(String id);
  // Future<Result<Driver>> getDrivers();
}

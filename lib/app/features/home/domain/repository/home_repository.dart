import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../driver/data/request/driver_request.dart';
import '../../data/response/rute_response.dart';
import '../../data/response/rutes_response.dart';
import '/app/services/remote/config/result.dart';

abstract class HomeRepository {
  Stream<QuerySnapshot<DriverLocation>> getDrivers();
  Future<Result<String>> getDriver(String id);
  Future<Result<RutesResponse>> getRutes();
  Future<Result<RuteResponse>> getRute(String id);
}

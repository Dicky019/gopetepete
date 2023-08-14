import 'package:cloud_firestore/cloud_firestore.dart';

import '../../driver/data/request/driver_request.dart';
import '/app/services/remote/config/result.dart';

import '../domain/model/rute.dart';
import '../domain/model/rutes.dart';

abstract class HomeService {
  Future<Result<Rutes>> getRutes();
  Future<Result<Rute>> getRute(String id);
  Stream<QuerySnapshot<DriverLocation>> getDrivers();
  Future<Result<String>> getDriver(String id);
}

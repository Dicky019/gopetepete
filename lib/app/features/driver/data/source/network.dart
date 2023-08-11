import 'package:cloud_firestore/cloud_firestore.dart';

import '/app/services/remote/config/result.dart';
import '../request/driver_request.dart';
import '../response/driver_response.dart';

abstract class Network {
  Future<Result<String>> updateLocation(
    String id,
    Map<String, dynamic> driverLocation,
  );
  Future<Result<DriverResponse>> getDriver(String id);
  Stream<DocumentSnapshot<DriverLocation>> streamLocation(String id);
  Future<Result<String>> updatePenumpang(String id, int jumlahPenumpang);
}

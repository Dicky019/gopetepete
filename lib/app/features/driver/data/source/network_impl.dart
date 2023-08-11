import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '/app/services/remote/config/config.dart';
import '../request/driver_request.dart';
import '../response/driver_response.dart';
import 'network.dart';

class NetworkImpl extends Network {
  final DioClient _dioClient;
  final _firestoreDriver = FirebaseFirestore.instance.collection("/drivers");

  NetworkImpl(
    this._dioClient,
  );

  @override
  Future<Result<DriverResponse>> getDriver(String id) async {
    try {
      final response = await _dioClient.get(
        "${Endpoint.driver}/$id",
      );
      return Result.success(DriverResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  @override
  Future<Result<String>> updateLocation(
    String id,
    Map<String, dynamic> driverLocation,
  ) async {
    try {
      await _firestoreDriver.doc(id).update(driverLocation);

      return const Result.success("Succses");
    } catch (e, st) {
      log("Ada Yang Salah", name: "updateLocation");
      return Result.failure(
        const NetworkExceptions.defaultError("Ada Yang Salah"),
        st,
      );
    }
  }

  @override
  Future<Result<String>> updatePenumpang(String id, int jumlahPenumpang) async {
    try {
      await _firestoreDriver.doc(id).update({
        "jumlahPenumpang": jumlahPenumpang,
      });

      return const Result.success("Succses");
    } catch (e, st) {
      log("Ada Yang Salah", name: "updateLocation");
      return Result.failure(
        const NetworkExceptions.defaultError("Ada Yang Salah"),
        st,
      );
    }
  }

  @override
  Stream<DocumentSnapshot<DriverLocation>> streamLocation(String id) {
    return _firestoreDriver
        .withConverter<DriverLocation>(
          fromFirestore: (snapshot, options) =>
              DriverLocation.fromJson(snapshot.data() ?? {}),
          toFirestore: (value, options) {
            return value.toJson();
          },
        )
        .doc(id)
        .snapshots();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/app/features/home/data/response/rutes_response.dart';

import '../../../driver/data/request/driver_request.dart';
import '../response/rute_response.dart';
import '/app/services/remote/config/config.dart';
import 'network.dart';

class NetworkImpl extends Network {
  final DioClient _dioClient;
  final _firestoreDriver = FirebaseFirestore.instance
      .collection("/drivers")
      .withConverter<DriverLocation>(
        fromFirestore: (snapshot, options) =>
            DriverLocation.fromJson(snapshot.data() ?? {}),
        toFirestore: (value, options) {
          return value.toJson();
        },
      );

  NetworkImpl(
    this._dioClient,
  );

  @override
  Future<Result<RuteResponse>> getRute(String id) async {
    try {
      final response = await _dioClient.get("${Endpoint.rute}/$id");
      return Result.success(RuteResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  @override
  Future<Result<RutesResponse>> getRutes() async {
    try {
      final response = await _dioClient.get(Endpoint.rute);
      return Result.success(RutesResponse.fromJson(response));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  @override
  Future<Result<String>> getDriver(String id) async {
    try {
      final response = await _dioClient.get("${Endpoint.driver}/$id");
      return Result.success(response['data']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  @override
  Stream<QuerySnapshot<DriverLocation>> getDrivers() {
    return _firestoreDriver.snapshots();
  }
}

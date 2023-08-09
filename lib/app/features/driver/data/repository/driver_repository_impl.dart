import 'package:flutter_application_1/app/features/driver/data/request/driver_request.dart';

import 'package:flutter_application_1/app/features/driver/data/response/driver_response.dart';

import 'package:flutter_application_1/app/services/remote/config/result.dart';

import '../source/network_impl.dart';
import '../../domain/repository/driver_repository.dart';

class DriverRepositoryImpl implements DriverRepository {
  final NetworkImpl _network;
  DriverRepositoryImpl(this._network);

  @override
  Future<Result<DriverLocationResponse>> updateLocation(
    DriverLocationRequest driverLocation,
  ) {
    return _network.updateLocation(driverLocation);
  }
}

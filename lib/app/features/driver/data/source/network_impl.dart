import '/app/services/remote/config/config.dart';
import '../request/driver_request.dart';
import '../response/driver_response.dart';
import 'network.dart';

class NetworkImpl extends Network {
  final DioClient _dioClient;

  NetworkImpl(
    this._dioClient,
  );

  @override
  Future<Result<DriverLocationResponse>> updateLocation(
    DriverLocationRequest driverLocation,
  ) async {
    try {
      final response = await _dioClient.put(
        "${Endpoint.driverLocation}/${driverLocation.id}",
        data: driverLocation.toJson(),
      );
      return Result.success(DriverLocationResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }
}

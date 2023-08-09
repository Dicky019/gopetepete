import '/app/services/remote/config/result.dart';
import '../../data/request/driver_request.dart';
import '../../data/response/driver_response.dart';

abstract class DriverRepository {
  Future<Result<DriverLocationResponse>> updateLocation(
    DriverLocationRequest driverLocation,
  );
}

import '../data/request/driver_request.dart';
import '/app/services/remote/config/result.dart';

abstract class DriverService {
  Future<Result<void>> updateLocation(DriverLocationRequest driverLocation);
  Future<void> logout();
}

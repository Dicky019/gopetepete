
import '/app/services/remote/config/result.dart';
import '../request/driver_request.dart';
import '../response/driver_response.dart';

abstract class Network {
    Future<Result<DriverLocationResponse>> updateLocation(DriverLocationRequest driverLocation);
}

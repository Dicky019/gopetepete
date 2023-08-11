import '/app/services/remote/config/result.dart';

abstract class DriverService {
  Future<Result<void>> updateLocation();
  Future<void> logout();
  Future<void> locationPermision();
}

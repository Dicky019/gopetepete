import '/app/services/remote/config/result.dart';

abstract class Network {
  Future<Result<String>> getRutes();
  Future<Result<String>> getRute(String id);
  Future<Result<String>> getDrivers();
  Future<Result<String>> getDriver(String id);
}

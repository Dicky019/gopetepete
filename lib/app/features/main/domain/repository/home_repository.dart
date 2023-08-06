import '/app/services/remote/config/result.dart';

abstract class HomeRepository {
  Future<Result<String>> getDrivers();
  Future<Result<String>> getDriver(String id);
  Future<Result<String>> getRutes();
  Future<Result<String>> getRute(String id);
}

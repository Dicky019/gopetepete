import '../../data/response/rute_response.dart';
import '../../data/response/rutes_response.dart';
import '/app/services/remote/config/result.dart';

abstract class HomeRepository {
  Future<Result<String>> getDrivers();
  Future<Result<String>> getDriver(String id);
  Future<Result<RutesResponse>> getRutes();
  Future<Result<RuteResponse>> getRute(String id);
}

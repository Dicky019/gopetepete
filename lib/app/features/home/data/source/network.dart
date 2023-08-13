import '../response/rute_response.dart';
import '../response/rutes_response.dart';
import '/app/services/remote/config/result.dart';

abstract class Network {
  Future<Result<RutesResponse>> getRutes();
  Future<Result<RuteResponse>> getRute(String id);
  Future<Result<String>> getDrivers();
  Future<Result<String>> getDriver(String id);
}

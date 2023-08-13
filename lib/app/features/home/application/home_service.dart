import '/app/services/remote/config/result.dart';

import '../domain/model/rute.dart';
import '../domain/model/rutes.dart';

abstract class HomeService {
  Future<Result<Rutes>> getRutes();
  Future<Result<Rute>> getRute(String id);
  Future<Result<String>> getDrivers();
  Future<Result<String>> getDriver(String id);
}

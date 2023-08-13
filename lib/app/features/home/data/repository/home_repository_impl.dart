import '../response/rute_response.dart';
import '../response/rutes_response.dart';
import '/app/services/remote/config/result.dart';
import '../../domain/repository/home_repository.dart';
import '../source/network.dart';

class HomeRepositoryImpl extends HomeRepository {
  final Network _network;

  HomeRepositoryImpl({required Network network}) : _network = network;

  @override
  Future<Result<String>> getDrivers() {
    return _network.getDrivers();
  }

  @override
  Future<Result<RutesResponse>> getRutes() {
    return _network.getRutes();
  }

  @override
  Future<Result<String>> getDriver(String id) {
    return _network.getDriver(id);
  }

  @override
  Future<Result<RuteResponse>> getRute(String id) {
    return _network.getRute(id);
  }
}

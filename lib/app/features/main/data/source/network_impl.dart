import '/app/services/remote/config/config.dart';
import 'network.dart';

class NetworkImpl extends Network {
  final DioClient _dioClient;

  NetworkImpl(
    this._dioClient,
  );

  @override
  Future<Result<String>> getRute(String id) async {
    try {
      final response = await _dioClient.get("${Endpoint.rute}/$id");
      return Result.success(response['data']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  @override
  Future<Result<String>> getRutes() async {
    try {
      final response = await _dioClient.get(Endpoint.rute);
      return Result.success(response['data']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  @override
  Future<Result<String>> getDriver(String id) async {
    try {
      final response = await _dioClient.get("${Endpoint.driver}/$id");
      return Result.success(response['data']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  @override
  Future<Result<String>> getDrivers() async {
    try {
      final response = await _dioClient.get(Endpoint.driver);
      return Result.success(response['data']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }
}

import '../../data/response/daftar_driver_response.dart';
import '/app/features/driver/data/request/daftar_driver_request.dart';
import '/app/services/remote/config/result.dart';

abstract class DaftarDriverRepository {
  Future<Result<String>> daftarDriver({
    required DaftarDriverRequest daftarDriverRequest,
  });

  Future<Result<DaftarDriverImageResponse>> uploadImage({
    required String email,
    required DaftarDriverFormAkhir driverFormAkhir,
  });
}

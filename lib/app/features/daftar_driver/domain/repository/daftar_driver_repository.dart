import '../../data/request/daftar_driver_request.dart';
import '../../data/response/daftar_driver_response.dart';
import '/app/services/remote/config/result.dart';

abstract class DaftarDriverRepository {
  Future<Result<DaftarDriverResponse>> daftarDriver({
    required DaftarDriverRequest daftarDriverRequest,
  });

  Future<Result<DaftarDriverImageResponse>> uploadImage({
    required String email,
    required DaftarDriverFormAkhir driverFormAkhir,
  });

  Future<Result<String>> cekDriver({
    required DaftarDriverFormAwal daftarDriverRequest,
  });

  // Future<void> saveUser(User user);

  // User? get getUser;

  // Future<void> saveUserToken(String token);
  // Future<void> saveEmail(String token);
}

import '../data/request/daftar_driver_request.dart';
import '/app/services/remote/config/result.dart';

abstract class DaftarDriverService {
  Future<Result<void>> daftarDriver(
    DaftarDriverFormAwal driverFormAwal,
    DaftarDriverFormAkhir driverFormAkhir,
  );
}

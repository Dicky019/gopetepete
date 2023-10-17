import '../../auth/application/mapper/auth_mapper.dart';
import '../../auth/data/repository/auth_repository_impl.dart';
import '../data/repository/daftar_driver_repository_impl.dart';
import '../data/request/daftar_driver_request.dart';
import '/app/services/remote/config/result.dart';

import 'daftar_driver_service.dart';
import 'mapper/daftar_driver_mapper.dart';

class DaftarDriverServiceImpl implements DaftarDriverService {
  final DaftarDriverRepositoryImpl _daftarDriverRepository;
  final AuthRepositoryImpl _authRepository;
  DaftarDriverServiceImpl(this._daftarDriverRepository, this._authRepository);

  @override
  Future<Result<void>> daftarDriver(
    DaftarDriverFormAwal driverFormAwal,
    DaftarDriverFormAkhir driverFormAkhir,
  ) async {
    final image = await _daftarDriverRepository.uploadImage(
      email: driverFormAwal.email,
      driverFormAkhir: driverFormAkhir,
    );

    final response = DaftarDriverMapper.daftarDriverRequestMapTo(
      driverFormAwal,
      image,
    );

    return await response.when(
      success: (daftarDriverRequest) async {
        final daftarDriver = await _daftarDriverRepository.daftarDriver(
          daftarDriverRequest: daftarDriverRequest,
        );
        return daftarDriver.when(
          success: (data) {
            final user = data.data!.user!;
            _authRepository.saveUser(AuthenticationMapper.mapToUser(user));
            _authRepository.saveUserToken(data.data!.accessToken!);
            return const Result.success(null);
          },
          failure: (error, stackTrace) => Result.failure(error, stackTrace),
        );
      },
      failure: (error, stackTrace) {
        return Result.failure(error, stackTrace);
      },
    );
  }

  @override
  Future<Result<void>> cekDriver(DaftarDriverFormAwal driverFormAwal) async {
    final response = await _daftarDriverRepository.cekDriver(
      daftarDriverRequest: driverFormAwal,
    );
    return await response.when(
      success: (daftarDriverRequest) {
        return const Result.success(null);
      },
      failure: (error, stackTrace) {
        return Result.failure(error, stackTrace);
      },
    );
  }
}

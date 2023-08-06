import 'package:flutter_application_1/app/features/driver/application/mapper/daftar_driver_mapper.dart';

import '../data/request/daftar_driver_request.dart';
import '/app/services/remote/config/result.dart';
import '../data/repository/daftar_driver_repository_impl.dart';

import 'daftar_driver_service.dart';

class DaftarDriverServiceImpl implements DaftarDriverService {
  final DaftarDriverRepositoryImpl _daftarDriverRepository;
  DaftarDriverServiceImpl(this._daftarDriverRepository);

  @override
  Future<Result<void>> daftarDriver(
    DaftarDriverFormAwal driverFormAwal,
    DaftarDriverFormAkhir driverFormAkhir,
  ) async {
    final image = await _daftarDriverRepository.uploadImage(
      email: driverFormAwal.email,
      driverFormAkhir: driverFormAkhir,
    );

    final response =
        DaftarDriverMapper.daftarDriverRequestMapTo(driverFormAwal, image);

    return await response.when(
      success: (daftarDriverRequest) async {
        return await _daftarDriverRepository.daftarDriver(
          daftarDriverRequest: daftarDriverRequest,
        );
      },
      failure: (error, stackTrace) {
        return Result.failure(error, stackTrace);
      },
    );
  }
  
}

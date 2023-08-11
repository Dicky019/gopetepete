import 'package:flutter_application_1/app/features/auth/application/mapper/auth_mapper.dart';
import 'package:flutter_application_1/app/utils/extension/string_extension.dart';

import '/app/services/remote/config/config.dart';
import '../../data/response/driver_response.dart';
import '../../domain/model/driver.dart';

class DriverMapper {
  DriverMapper._();
  static Result<Driver> mapToUserResult(Result<DriverResponse> response) {
    return response.when(
      success: (data) {
        return Result.success(
          Driver(
            id: data.id.toEmpty,
            namaLengkap: data.namaLengkap.toEmpty,
            alamat: data.alamat.toEmpty,
            nik: data.nik.toEmpty,
            nokk: data.nokk.toEmpty,
            noHp: data.noHp.toEmpty,
            noPlatMobil: data.noPlatMobil.toEmpty,
            maxPenumpang: data.maxPenumpang ?? 0,
            fotoKtp: data.fotoKtp.toEmpty,
            fotoMobil: data.fotoMobil.toEmpty,
            user: AuthenticationMapper.mapToUser(data.user!),
          ),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }
}

import '../../data/response/daftar_driver_response.dart';
import '/app/services/remote/config/result.dart';
import '../../data/request/daftar_driver_request.dart';

class DaftarDriverMapper {
  DaftarDriverMapper._();

  static Result<DaftarDriverRequest> daftarDriverRequestMapTo(
    DaftarDriverFormAwal driverFormAwal,
    Result<DaftarDriverImageResponse> imageDriver,
  ) {
    return imageDriver.when(
      success: (data) {
        final result = DaftarDriverRequest(
          namaLengkap: driverFormAwal.namaLengkap,
          alamat: driverFormAwal.alamat,
          nik: driverFormAwal.nik,
          nokk: driverFormAwal.nokk,
          noHp: driverFormAwal.noHp,
          noPlatMobil: driverFormAwal.noPlatMobil,
          maxPenumpang: driverFormAwal.maxPenumpang,
          fotoKtp: data.fotoKtp,
          fotoMobil: data.fotoMobil,
          user: DaftarDriverUser(
            name: driverFormAwal.name,
            email: driverFormAwal.email,
            image: data.image,
          ),
        );

        return Result.success(result);
      },
      failure: (error, stackTrace) => Result.failure(error, stackTrace),
    );
  }
}

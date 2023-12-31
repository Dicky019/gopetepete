// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../response/daftar_driver_response.dart';
import '/app/services/remote/config/network_exceptions.dart';
import '/app/utils/extension/dynamic_extension.dart';

import '../source/network_impl.dart';

import '../../data/request/daftar_driver_request.dart';
import '../../domain/repository/daftar_driver_repository.dart';
import '/app/services/remote/config/result.dart';

class DaftarDriverRepositoryImpl implements DaftarDriverRepository {
  final NetworkImpl _network;
  // final LocalImpl _local;
  DaftarDriverRepositoryImpl(this._network);

  @override
  Future<Result<DaftarDriverResponse>> daftarDriver({
    required DaftarDriverRequest daftarDriverRequest,
  }) {
    return _network.daftarDriver(daftarDriverRequest: daftarDriverRequest);
  }

  @override
  Future<Result<String>> cekDriver({
    required DaftarDriverFormAwal daftarDriverRequest,
  }) {
    return _network.cekDriver(daftarDriverRequest: daftarDriverRequest);
  }

  @override
  Future<Result<DaftarDriverImageResponse>> uploadImage({
    required String email,
    required DaftarDriverFormAkhir driverFormAkhir,
  }) async {
    try {
      final fotoResult = await _network.uploadImage(
          image: driverFormAkhir.image, imageName: "$email/foto");
      final fotoKtpResult = await _network.uploadImage(
          image: driverFormAkhir.fotoKtp, imageName: "$email/fotoKtp");
      final fotoMobilResult = await _network.uploadImage(
          image: driverFormAkhir.fotoMobil, imageName: "$email/fotoMobil");

      if (fotoKtpResult.isNull) {
        throw ErrorDescription("foto Ktp Null");
      }
      if (fotoResult.isNull) {
        throw ErrorDescription("foto Ktp Null");
      }
      if (fotoMobilResult.isNull) {
        throw ErrorDescription("foto Ktp Null");
      }

      return Result.success(DaftarDriverImageResponse(
        image: fotoResult!,
        fotoKtp: fotoKtpResult!,
        fotoMobil: fotoMobilResult!,
      ));
    } catch (e, st) {
      return Result.failure(const NetworkExceptions.internalServerError(), st);
    }
  }

}

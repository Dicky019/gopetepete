import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'daftar_driver_request.freezed.dart';
part 'daftar_driver_request.g.dart';

@freezed
class DaftarDriverRequest with _$DaftarDriverRequest {
  const factory DaftarDriverRequest({
    required String namaLengkap,
    required String alamat,
    required String nik,
    required String nokk,
    required String noHp,
    required String noPlatMobil,
    required int maxPenumpang,
    required String fotoKtp,
    required String fotoMobil,
    required DaftarDriverUser user,
  }) = _DaftarDriverRequest;

  factory DaftarDriverRequest.fromJson(Map<String, dynamic> json) =>
      _$DaftarDriverRequestFromJson(json);
}

@freezed
class DaftarDriverFormAwal with _$DaftarDriverFormAwal {
  const factory DaftarDriverFormAwal({
    required String name,
    required String nik,
    required String nokk,
    required String namaLengkap,
    required String noHp,
    required String email,
    required String alamat,
    required String noPlatMobil,
    required int maxPenumpang,
  }) = _DaftarDriverFormAwal;

    factory DaftarDriverFormAwal.fromJson(Map<String, dynamic> json) =>
      _$DaftarDriverFormAwalFromJson(json);
}

@freezed
class DaftarDriverFormAkhir with _$DaftarDriverFormAkhir {
  const factory DaftarDriverFormAkhir({
    required File image,
    required File fotoKtp,
    required File fotoMobil,
  }) = _DaftarDriverFormAkhir;
}

@freezed
class DaftarDriverUser with _$DaftarDriverUser {
  const factory DaftarDriverUser({
    required String name,
    required String email,
    required String image,
  }) = _DaftarDriverUser;

  factory DaftarDriverUser.fromJson(Map<String, dynamic> json) =>
      _$DaftarDriverUserFromJson(json);
}

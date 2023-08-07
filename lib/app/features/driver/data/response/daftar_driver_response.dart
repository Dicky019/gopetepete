// ignore_for_file: invalid_annotation_target

import 'package:flutter_application_1/app/features/auth/data/response/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daftar_driver_response.freezed.dart';
part 'daftar_driver_response.g.dart';

@freezed
class DaftarDriverImageResponse with _$DaftarDriverImageResponse {
  const factory DaftarDriverImageResponse({
    required String image,
    required String fotoKtp,
    required String fotoMobil,
  }) = _DaftarDriverImageResponse;
}

@freezed
class DaftarDriverResponse with _$DaftarDriverResponse {
  const factory DaftarDriverResponse({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "data") required DaftarDriverData? data,
  }) = _DaftarDriverResponse;

  factory DaftarDriverResponse.fromJson(Map<String, dynamic> json) =>
      _$DaftarDriverResponseFromJson(json);
}

@freezed
class DaftarDriverData with _$DaftarDriverData {
  const factory DaftarDriverData({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "namaLengkap") String? namaLengkap,
    @JsonKey(name: "alamat") String? alamat,
    @JsonKey(name: "nik") String? nik,
    @JsonKey(name: "nokk") String? nokk,
    @JsonKey(name: "noHp") String? noHp,
    @JsonKey(name: "noPlatMobil") String? noPlatMobil,
    @JsonKey(name: "maxPenumpang") int? maxPenumpang,
    @JsonKey(name: "fotoKtp") String? fotoKtp,
    @JsonKey(name: "fotoMobil") String? fotoMobil,
    @JsonKey(name: "latAwal") String? latAwal,
    @JsonKey(name: "longAwal") String? longAwal,
    @JsonKey(name: "accessToken") String? accessToken,
    @JsonKey(name: "user") UserResponse? user,
  }) = _DaftarDriverData;
  
  factory DaftarDriverData.fromJson(Map<String, dynamic> json) =>
      _$DaftarDriverDataFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'package:flutter_application_1/app/features/auth/data/response/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_response.freezed.dart';
part 'driver_response.g.dart';

@freezed
class DriverResponse with _$DriverResponse {
  const factory DriverResponse({
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
    @JsonKey(name: "user") UserResponse? user,
  }) = _DriverResponse;

  factory DriverResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverResponseFromJson(json);
}

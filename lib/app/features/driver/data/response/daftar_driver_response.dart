
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daftar_driver_response.freezed.dart';
// part 'daftar_driver_response.g.dart';

@freezed
class DaftarDriverImageResponse with _$DaftarDriverImageResponse {
  const factory DaftarDriverImageResponse({
    required String image,
    required String fotoKtp,
    required String fotoMobil,
  }) = _DaftarDriverImageResponse;
}
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_response.freezed.dart';
part 'driver_response.g.dart';

@freezed
class DriverLocationResponse with _$DriverLocationResponse {
  const factory DriverLocationResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "lat") String? namaLengkap,
    @JsonKey(name: "long") String? alamat,
  }) = _DriverLocationResponse;

  factory DriverLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverLocationResponseFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rute_response.freezed.dart';
part 'rute_response.g.dart';

@freezed
class RuteResponse with _$RuteResponse {
  const factory RuteResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "createdAt") String? createdAt,
    @JsonKey(name: "updatedAt") String? updatedAt,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "kode") String? kode,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "locations") List<LocationsResponse>? locations,
  }) = _RuteResponse;

  factory RuteResponse.fromJson(Map<String, dynamic> json) =>
      _$RuteResponseFromJson(json);
}

@freezed
class LocationsResponse with _$LocationsResponse {
  const factory LocationsResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "latAwal") String? latAwal,
    @JsonKey(name: "longAwal") String? longAwal,
    @JsonKey(name: "latAkhir") String? latAkhir,
    @JsonKey(name: "longAkhir") String? longAkhir,
  }) = _LocationsResponse;

  factory LocationsResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationsResponseFromJson(json);
}

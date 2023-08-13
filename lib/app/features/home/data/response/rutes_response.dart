// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'rute_response.dart';

part 'rutes_response.freezed.dart';
part 'rutes_response.g.dart';

@freezed
class RutesResponse with _$RutesResponse {
  const factory RutesResponse({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "data") List<RuteResponse>? data,
  }) = _RutesResponse;

  factory RutesResponse.fromJson(Map<String, dynamic> json) =>
      _$RutesResponseFromJson(json);
}

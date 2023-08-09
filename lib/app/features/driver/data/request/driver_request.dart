import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_request.freezed.dart';
part 'driver_request.g.dart';

@freezed
class DriverLocationRequest with _$DriverLocationRequest {
  const factory DriverLocationRequest({
    required String id,
    required String lat,
    required String long,
  }) = _DriverLocationRequest;

  factory DriverLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$DriverLocationRequestFromJson(json);
}

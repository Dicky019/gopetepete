import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'rute.freezed.dart';

@freezed
class Rute with _$Rute {
  const factory Rute({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String name,
    required String kode,
    required String color,
    required Polyline locations,
  }) = _Rute;
}

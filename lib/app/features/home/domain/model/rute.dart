import 'package:freezed_annotation/freezed_annotation.dart';

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
    required String latAwal,
    required String longAwal,
    required String latAkhir,
    required String longAkhir,
  }) = _Rute;
}

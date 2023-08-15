import 'package:freezed_annotation/freezed_annotation.dart';

import 'rute.dart';

part 'rutes.freezed.dart';
// part 'rute.g.dart';

@freezed
class Rutes with _$Rutes {
  const factory Rutes({
    required String code,
    required List<Rute> data,
    // required Set<Polyline> locations,
  }) = _Rutes;
}
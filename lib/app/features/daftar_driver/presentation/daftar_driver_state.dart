import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class DaftarDriverState {
  final AsyncValue<bool?> value;
  final File? foto;
  final File? fotoKtp;
  final File? fotoMobil;

  const DaftarDriverState({
    this.foto,
    this.fotoKtp,
    this.fotoMobil,
    this.value = const AsyncData(null),
  });

  DaftarDriverState copyWith({
    AsyncValue<bool?>? value,
    File? foto,
    File? fotoKtp,
    File? fotoMobil,
  }) {
    return DaftarDriverState(
      foto: foto ?? this.foto,
      fotoKtp: fotoKtp ?? this.fotoKtp,
      fotoMobil: fotoMobil ?? this.fotoMobil,
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

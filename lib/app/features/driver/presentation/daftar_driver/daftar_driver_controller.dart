import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/daftar_driver_service_impl.dart';
import '../../application/module.dart';
import '../../data/request/daftar_driver_request.dart';

import 'daftar_driver_state.dart';
import 'views/daftar_driver_lanjutan_view.dart';

class DaftarDriverControllerNotifier extends StateNotifier<DaftarDriverState> {
  DaftarDriverControllerNotifier(this._driverService)
      : super(const DaftarDriverState());

  final DaftarDriverServiceImpl _driverService;

  final usernameC = TextEditingController();
  final nikC = TextEditingController();
  final noKKC = TextEditingController();
  final namaLengkapC = TextEditingController();
  final alamatC = TextEditingController();
  final noHpC = TextEditingController();
  final gmailC = TextEditingController();
  final noPlatC = TextEditingController();
  final maxPenumpangC = TextEditingController();

  String get username => usernameC.text;
  String get nik => nikC.text;
  String get nokk => noKKC.text;
  String get namaLengkap => namaLengkapC.text;
  String get alamat => alamatC.text;
  String get noHp => noHpC.text;
  String get email => gmailC.text;
  String get noPlatMobil => noPlatC.text;
  int get maxPenumpang => int.tryParse(maxPenumpangC.text) ?? 0;

  toLanjutan(BuildContext context) {
    final DaftarDriverFormAwal driverFormAwal = DaftarDriverFormAwal(
      name: username,
      nik: nik,
      nokk: nokk,
      namaLengkap: namaLengkap,
      noHp: noHp,
      email: email,
      alamat: alamat,
      noPlatMobil: noPlatMobil,
      maxPenumpang: maxPenumpang,
    );

    context.push(
      DaftarDriverLanjutanView.path,
      extra: driverFormAwal,
    );
  }

  // form lanjutan
  final fotoC = TextEditingController();
  final fotoKtpC = TextEditingController();
  final fotoMobilC = TextEditingController();

  void daftarDriver(
    DaftarDriverFormAwal driverFormAwal,
    DaftarDriverFormAkhir driverFormAkhir,
  ) async {
    state = state.copyWith(value: const AsyncLoading());
    final daftarDriver =
        await _driverService.daftarDriver(driverFormAwal, driverFormAkhir);

    daftarDriver.when(
      success: (data) {
        state = state.copyWith(value: const AsyncData(null));
      },
      failure: (error, stackTrace) {
        state = state.copyWith(value: AsyncError(error, stackTrace));
      },
    );

    state = state.copyWith(value: const AsyncData(null));
  }
  
}

final daftarDriverControllerProvider = StateNotifierProvider.autoDispose<
    DaftarDriverControllerNotifier, DaftarDriverState>((ref) {
  return DaftarDriverControllerNotifier(
    ref.read(daftarDriverServiceProvider),
  );
});

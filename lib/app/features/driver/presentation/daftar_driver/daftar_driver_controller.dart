import 'dart:io';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '/app/utils/extension/dynamic_extension.dart';
import '../../application/daftar_driver_service_impl.dart';
import '../../application/module.dart';
import '../../data/request/daftar_driver_request.dart';

import 'daftar_driver_state.dart';
import '../driver_verivication/driver_verification_view.dart';
import 'views/daftar_driver_lanjutan_view.dart';

class DaftarDriverControllerNotifier extends StateNotifier<DaftarDriverState> {
  DaftarDriverControllerNotifier(this._driverService)
      : super(const DaftarDriverState());

  final DaftarDriverServiceImpl _driverService;

  final usernameC = TextEditingController(text: "Dicky19");
  final nikC = TextEditingController(text: "2123123312313132");
  final noKKC = TextEditingController(text: "213312312321231");
  final namaLengkapC = TextEditingController(text: "Dicky Darmawan");
  final alamatC = TextEditingController(text: "BTP");
  final noHpC = TextEditingController(text: "081355834769");
  final gmailC = TextEditingController(text: "dickydarmawanTes1@gmail.com");
  final noPlatC = TextEditingController(text: "DD 31123 DE");
  final maxPenumpangC = TextEditingController(text: "10");

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
    //  context.go(DriverVerificationView.path);
  }

  // form lanjutan

  final ImagePicker picker = ImagePicker();

  Future<void> getImage(FotoEnum image) async {
    final xImage = await picker.pickImage(source: ImageSource.gallery);
    if (xImage.isNull) {
      log("Image Null");
      return;
    }
    final foto = File(xImage!.path);
    if (image == FotoEnum.foto) {
      state = state.copyWith(foto: foto);
    }
    if (image == FotoEnum.fotoKtp) {
      state = state.copyWith(fotoKtp: foto);
    }
    if (image == FotoEnum.fotoMobil) {
      state = state.copyWith(
        fotoMobil: foto,
      );
    }
  }

  void daftarDriver(
    DaftarDriverFormAwal driverFormAwal,
    {
      required BuildContext context
    }
  ) async {
    EasyLoading.show(status: "Memuat");
    state = state.copyWith(value: const AsyncLoading());
    final driverFormAkhir = DaftarDriverFormAkhir(
      fotoKtp: state.fotoKtp!,
      fotoMobil: state.fotoMobil!,
      image: state.foto!,
    );
    final daftarDriver =
        await _driverService.daftarDriver(driverFormAwal, driverFormAkhir);

    daftarDriver.when(
      success: (data) {
        state = state.copyWith(value: const AsyncData(null));
        EasyLoading.showSuccess("Berhasil");
        // if (data == "200") {
          context.go(DriverVerificationView.routeName);
        // }
      },
      failure: (error, stackTrace) {
        state = state.copyWith(value: AsyncError(error, stackTrace));
      },
    );
    EasyLoading.dismiss();
    state = state.copyWith(value: const AsyncData(null));
  }
}

final daftarDriverControllerProvider = StateNotifierProvider.autoDispose<
    DaftarDriverControllerNotifier, DaftarDriverState>((ref) {
  return DaftarDriverControllerNotifier(
    ref.read(daftarDriverServiceProvider),
  );
});

enum FotoEnum { foto, fotoKtp, fotoMobil }

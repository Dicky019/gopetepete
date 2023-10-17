import 'dart:io';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../driver/presentation/driver_verivication/driver_verification_view.dart';
import '../application/daftar_driver_service_impl.dart';
import '../application/module.dart';
import '../data/request/daftar_driver_request.dart';
import '/app/utils/extension/dynamic_extension.dart';

import 'daftar_driver_state.dart';
import 'views/daftar_driver_lanjutan_view.dart';

class DaftarDriverControllerNotifier extends StateNotifier<DaftarDriverState> {
  DaftarDriverControllerNotifier(this._driverService)
      : super(const DaftarDriverState());

  final DaftarDriverServiceImpl _driverService;

  // final keyFormAwal = GlobalKey<FormState>();
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

  toLanjutan(BuildContext context) async {
    EasyLoading.show(status: "Memuat");
    state = state.copyWith(value: const AsyncLoading());

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

    final daftarDriver = await _driverService.cekDriver(driverFormAwal);

    daftarDriver.when(
      success: (data) {
        state = state.copyWith(value: const AsyncData(null));
        // EasyLoading.showSuccess("Berhasil");
        EasyLoading.dismiss();
        context.push(
          DaftarDriverLanjutanView.path,
          extra: driverFormAwal,
        );
      },
      failure: (error, stackTrace) {
        error.whenOrNull(
          badResponse: (reason) => EasyLoading.showError(reason),
          notFound: (reason) => EasyLoading.showError(reason),
          defaultError: (reason) => EasyLoading.showError(reason),
        );
        state = state.copyWith(value: AsyncError(error, stackTrace));
      },
    );
    EasyLoading.dismiss();
    state = state.copyWith(value: const AsyncData(null));
  }

  // form lanjutan
  final keyForm = GlobalKey<FormState>();
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
    DaftarDriverFormAwal driverFormAwal, {
    required BuildContext context,
  }) async {
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
        log("daftarDriver , Berhasil", name: "daftarDriver.when");
        context.go(DriverVerificationView.routeName);
      },
      failure: (error, stackTrace) {
        error.whenOrNull(
          badResponse: (reason) => EasyLoading.showError(reason),
          notFound: (reason) => EasyLoading.showError(reason),
        );
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

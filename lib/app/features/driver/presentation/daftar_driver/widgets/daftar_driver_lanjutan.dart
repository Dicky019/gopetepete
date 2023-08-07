import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/widgets/upload_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/request/daftar_driver_request.dart';
import '/app/constants/theme/app_size.dart';

import '../daftar_driver_controller.dart';
import '../../../../../widgets/input_form.dart';

class DaftarDriverLanjutan extends ConsumerWidget {
  const DaftarDriverLanjutan(this.driverFormAwal, {super.key, required});

  final DaftarDriverFormAwal driverFormAwal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(daftarDriverControllerProvider.notifier);
    final state = ref.watch(daftarDriverControllerProvider);

    final keyFormLanjutan = GlobalKey<FormState>(debugLabel: "Daftar Driver");

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: InputFormWidget(
          isLoading: state.isLoading,
          keyForm: keyFormLanjutan,
          onSubmit: () {
            if (!(keyFormLanjutan.currentState?.validate() ?? true)) {
              return;
            }
            controller.daftarDriver(driverFormAwal, context: context);
          },
          title: 'Lanjutan',
          children: [
            Gap.h4,
            Row(
              children: [
                Expanded(
                  child: UploadImageWidget(
                    title: 'Foto',
                    foto: state.foto,
                    onTap: () async {
                      await controller.getImage(FotoEnum.foto);
                    },
                  ),
                ),
                Gap.w16,
                Expanded(
                  child: UploadImageWidget(
                    title: 'Foto Ktp',
                    foto: state.fotoKtp,
                    onTap: () async {
                      await controller.getImage(FotoEnum.fotoKtp);
                    },
                  ),
                ),
              ],
            ),
            UploadImageWidget(
              title: 'Foto Mobil',
              foto: state.fotoMobil,
              onTap: () async {
                await controller.getImage(FotoEnum.fotoMobil);
              },
            ),
          ],
        ),
      ),
    );
  }
}

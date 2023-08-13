import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/widgets/form/image_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/request/daftar_driver_request.dart';
import '/app/constants/theme/app_size.dart';
import '../../../../widgets/form/input_form.dart';
import '../daftar_driver_controller.dart';

class DaftarDriverLanjutan extends ConsumerWidget {
  const DaftarDriverLanjutan(this.driverFormAwal, {super.key, required});

  final DaftarDriverFormAwal driverFormAwal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(daftarDriverControllerProvider.notifier);
    final state = ref.watch(daftarDriverControllerProvider);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: InputFormWidget(
          isLoading: false,
          keyForm: controller.keyForm,
          onSubmit: () {
            if (!(controller.keyForm.currentState?.validate() ?? true)) {
              return;
            }
            controller.daftarDriver(driverFormAwal, context: context);
          },
          title: 'Daftar',
          children: [
            Gap.h4,
            Row(
              children: [
                Expanded(
                  child: ImageFieldWidget(
                    title: 'Foto',
                    foto: state.foto,
                    onTap: () async {
                      await controller.getImage(FotoEnum.foto);
                    },
                  ),
                ),
                Gap.w16,
                Expanded(
                  child: ImageFieldWidget(
                    title: 'Foto Ktp',
                    foto: state.fotoKtp,
                    onTap: () async {
                      await controller.getImage(FotoEnum.fotoKtp);
                    },
                  ),
                ),
              ],
            ),
            ImageFieldWidget(
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

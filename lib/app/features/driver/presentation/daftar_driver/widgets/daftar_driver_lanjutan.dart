import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/widgets/upload_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/constants/theme/app_size.dart';

import '../daftar_driver_controller.dart';
import '../../../../../widgets/input_form.dart';

class DaftarDriverLanjutan extends ConsumerWidget {
  const DaftarDriverLanjutan({super.key});

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
          },
          title: 'Lanjutan',
          children: [
            Gap.h4,
            UploadImageWidget(
              title: 'foto',
              foto: controller.foto,
              onTap: () => controller.getImage(controller.foto),
            ),
            UploadImageWidget(
              title: 'Foto Ktp',
              foto: controller.foto,
              onTap: () => controller.getImage(controller.foto),
            ),
            UploadImageWidget(
              title: 'Foto Mobil',
              foto: controller.foto,
              onTap: () => controller.getImage(controller.foto),
            ),
            // TextFieldWidget(
            //   controller: controller.fotoKtpC,
            //   hintText: 'Foto Ktp',
            // ),
            // TextFieldWidget(
            //   controller: controller.fotoMobilC,
            //   hintText: 'Foto Mobil',
            //   onClick: () {},
            // ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/constants/theme/app_size.dart';
import '/app/widgets/text_field.dart';

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
            TextFieldWidget(
              controller: controller.fotoC,
              hintText: 'Foto',
            ),
            TextFieldWidget(
              controller: controller.fotoKtpC,
              hintText: 'Foto Ktp',
            ),
            TextFieldWidget(
              controller: controller.fotoMobilC,
              hintText: 'Foto Mobil',
              onClick: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/constants/theme/app_size.dart';
import '../../../../widgets/form/text_field.dart';
import '../../../../widgets/form/input_form.dart';
import '../daftar_driver_controller.dart';

class DaftarDriver extends ConsumerWidget {
  const DaftarDriver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(daftarDriverControllerProvider.notifier);
    final state = ref.watch(daftarDriverControllerProvider);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: InputFormWidget(
          isLoading: state.isLoading,
          keyForm:  GlobalKey<FormState>(),
          onSubmit: () {
            // if (!(controller.keyFormAwal.currentState?.validate() ?? true)) {
            //   return;
            // }
            controller.toLanjutan(context);
          },
          title: 'Lanjutan',
          children: [
            Gap.h4,
            TextFieldWidget(
              controller: controller.usernameC,
              hintText: 'Username',
            ),
            TextFieldWidget(
              controller: controller.nikC,
              hintText: 'NIK',
            ),
            TextFieldWidget(
              controller: controller.noKKC,
              hintText: 'No.KK',
            ),
            TextFieldWidget(
              controller: controller.namaLengkapC,
              hintText: 'Nama Lengkap',
            ),
            TextFieldWidget(
              controller: controller.noHpC,
              hintText: 'No.HP',
            ),
            TextFieldWidget(
              controller: controller.gmailC,
              hintText: 'Gmail',
            ),
            TextFieldWidget(
              controller: controller.noPlatC,
              hintText: 'No.Plat',
            ),
            TextFieldWidget(
              controller: controller.maxPenumpangC,
              hintText: 'Max Penumpang',
            ),
          ],
        ),
      ),
    );
  }
}

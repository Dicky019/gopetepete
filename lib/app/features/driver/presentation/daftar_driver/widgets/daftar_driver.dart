import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/constants/theme/app_size.dart';
import 'package:flutter_application_1/app/features/driver/presentation/daftar_driver/daftar_driver_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/widgets/text_field.dart';
import '../../../../../widgets/input_form.dart';

class DaftarDriver extends ConsumerWidget {
  const DaftarDriver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(daftarDriverControllerProvider.notifier);
    final state = ref.watch(daftarDriverControllerProvider);
    final keyForm = GlobalKey<FormState>(debugLabel: "Daftar Driver");

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: InputFormWidget(
          isLoading: state.isLoading,
          keyForm: keyForm,
          onSubmit: () {
            // if (!(keyForm.currentState?.validate() ?? true)) {
            //   return;
            // }
            controller.toLanjutan(context);
          },
          // onSubmit: () => ,
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

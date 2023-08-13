import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/driver/presentation/driver_profile/driver_profile_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../presentation/driver_controller.dart';
import '/app/constants/theme/app_size.dart';
import '/app/widgets/button.dart';

class DriverWidget extends ConsumerWidget {
  const DriverWidget({super.key});

  @override
  Widget build(context, ref) {
    final controller = ref.read(driverControllerProvider.notifier);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Gap.h20,
          ButtonWidget(
            text: "Aktif Lokasi",
            onTap: () {
              log("Aktif Lokasi");
              controller.toActive(context);
            },
          ),
          Gap.h12,
          ButtonWidget(
            text: "Profile",
            isPrimary: false,
            onTap: () => context.push(DriverProfileView.path),
          ),
        ],
      ),
    );
  }
}

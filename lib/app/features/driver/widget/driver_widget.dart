import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../presentation/driver_controller.dart';
import '/app/constants/theme/app_size.dart';
import '/app/widgets/button.dart';

class DriverWidget extends ConsumerWidget {
  /// TODO add your comment here
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
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

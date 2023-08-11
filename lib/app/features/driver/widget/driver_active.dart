import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/driver/presentation/driver_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/request/driver_request.dart';
import '/app/constants/theme/app_size.dart';
import '/app/widgets/button.dart';

class DriverActiveWidget extends ConsumerWidget {
  const DriverActiveWidget({super.key});

  @override
  Widget build(context, ref) {
    final controller = ref.read(driverControllerProvider.notifier);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: StreamBuilder<DocumentSnapshot<DriverLocation>>(
        stream: controller.streamLocation,
        builder: (context, snapshot) {
          if (!snapshot.hasData ||
              snapshot.data == null ||
              snapshot.data?.data() == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.data!.data()!;

          log(data.toString());

          final jumlahPenumpang = data.jumlahPenumpang ?? 0;

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Jumlah Penumpang",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Gap.h12,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$jumlahPenumpang",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Colors.blueAccent,
                        ),
                  ),
                  Text(
                    "/",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(),
                  ),
                  Text(
                    "${data.maxPenumpang}",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Colors.redAccent,
                        ),
                  ),
                ],
              ),
              Gap.h24,
              Row(
                children: [
                  Expanded(
                    child: ButtonWidget(
                      isEnabled: data.jumlahPenumpang != data.maxPenumpang,
                      text: "+1",
                      onTap: () =>
                          controller.updatePenumpang(jumlahPenumpang + 1),
                    ),
                  ),
                  Gap.w12,
                  Expanded(
                    child: ButtonWidget(
                      isEnabled: data.jumlahPenumpang != 0,
                      text: "-1",
                      isPrimary: false,
                      onTap: () =>
                          controller.updatePenumpang(jumlahPenumpang - 1),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

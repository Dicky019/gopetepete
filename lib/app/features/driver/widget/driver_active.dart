import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/constants/theme/app_size.dart';
import '/app/widgets/button.dart';

class DriverActiveWidget extends ConsumerWidget {
  /// TODO add your comment here
  const DriverActiveWidget({super.key});

  @override
  Widget build(context, ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "7",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Gap.h20,
          Row(
            children: [
              Expanded(
                child: ButtonWidget(
                  text: "+1",
                  onTap: () {},
                ),
              ),
              Gap.w12,
              Expanded(
                child: ButtonWidget(
                  text: "-1",
                  isPrimary: false,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

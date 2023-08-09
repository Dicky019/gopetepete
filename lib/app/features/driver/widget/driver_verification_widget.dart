import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/constants/theme/app_size.dart';
import 'package:flutter_application_1/app/widgets/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/gen/assets.gen.dart';

class DriverVerificationWidget extends StatelessWidget {
  const DriverVerificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap.h32,
        Assets.images.login.image(),
        Gap.h24,
        Text(
          "Silahkan Tunggu... \nPaling Lama 2 Hari",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Gap.h32,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ButtonWidget(
            text: "Logout",
            onTap: () {},
          ),
        )
      ],
    );
  }
}

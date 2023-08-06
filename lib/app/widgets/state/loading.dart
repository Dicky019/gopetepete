import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/constants/theme/app_color.dart';

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(color: AppColor.pureWhite,);
  }
}

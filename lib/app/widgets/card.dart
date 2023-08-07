// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_application_1/app/constants/theme/app_color.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.widget,
    this.height,
    this.width,
    this.margin,
    this.padding,
  }) : super(key: key);

  final Widget widget;
  final double? height, width;
  final EdgeInsets? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      margin: margin ?? EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColor.pureWhite,
        borderRadius: BorderRadius.circular(8).r,
        boxShadow: [
          BoxShadow(
            color: AppColor.halfGrey.withOpacity(0.2),
            spreadRadius: 1.w,
            blurRadius: 9.w,
            offset: Offset(0, 3.h), // changes position of shadow
          ),
        ],
      ),
      child: widget,
    );
  }
}

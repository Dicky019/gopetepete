import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/constants/theme/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.widget,
    this.height,
    this.width,
    this.marginLeft,
    this.marginRight,
    this.marginBottom,
    this.marginTop,
  }) : super(key: key);

  final Widget widget;
  final double? height, width, marginLeft, marginRight, marginBottom, marginTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      margin: EdgeInsets.only(
        top: marginTop?.h ?? 16.h,
        bottom: marginBottom?.h ?? 16.h,
        left: marginLeft?.w ?? 16.w,
        right: marginRight?.w ?? 16.w,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
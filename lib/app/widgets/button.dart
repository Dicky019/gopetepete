import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'state/loading.dart';
import '../constants/theme/app_color.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    bool? isEnabled,
    this.onTap,
    this.isSmall = false,
    this.isLoading = false,
    this.isPrimary = true,
  })  : _isEnabled = isEnabled ?? onTap != null ? true : false,
        color = AppColor.primary,
        focusColor = AppColor.offGrey,
        textColor = AppColor.pureWhite,
        overlayColor = AppColor.softGrey;

  final bool _isEnabled;

  final VoidCallback? onTap;
  final Color color;
  final Color focusColor;
  final Color overlayColor;
  final Color textColor;
  final bool isSmall;
  final bool isLoading;
  final bool isPrimary;
  final String text;

  Color? get _getColor {
    return _isEnabled
        ? isPrimary
            ? color
            : AppColor.secondary
        : AppColor.halfGrey;
  }

  Color? get _getFocusColor {
    return _isEnabled ? focusColor : null;
  }

  MaterialStateProperty<Color>? get _getOverlayColor {
    return _isEnabled ? MaterialStateProperty.all(overlayColor) : null;
  }

  EdgeInsets get _getPadding {
    if (isSmall) {
      return EdgeInsets.symmetric(
        horizontal: 50.w,
        vertical: 8.h,
      );
    } else {
      return EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 12.h,
      );
    }
  }

  Widget get _getLoading {
    if (isSmall) {
      return SizedBox(
        height: 12.h,
        width: 16.w,
        child: const LoadingStateWidget(),
      );
    }
    return SizedBox(
      height: 20.h,
      width: 24.w,
      child: const LoadingStateWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _getColor,
      borderRadius: BorderRadius.circular(60.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(60.r),
        onTap: _isEnabled ? onTap : null,
        focusColor: _getFocusColor,
        overlayColor: _getOverlayColor,
        child: Container(
          width: isSmall ? null : double.infinity,
          padding: _getPadding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.r),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: isLoading,
                child: _getLoading,
              ),
              Visibility(
                visible: !isLoading,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Text(
                  text,
                  style: TextStyle(
                    color: !_isEnabled ? AppColor.offGrey : textColor,
                    fontSize: isSmall ? 12.sp : 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

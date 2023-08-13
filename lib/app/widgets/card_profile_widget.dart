import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardProfilWidget extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final double border;
  const CardProfilWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
    required this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 24.r,
            offset: Offset(0.w, 8.h),
            spreadRadius: 8.r,
          )
        ],
      ),
      child: child,
    );
  }
}

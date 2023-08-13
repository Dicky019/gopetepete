
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextProfileWidget extends StatelessWidget {
  const TextProfileWidget({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
          SizedBox(
            height: 24.h,
            width: 12.w,
            child: const VerticalDivider(),
          ),
          Expanded(
            flex: 6,
            child: Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

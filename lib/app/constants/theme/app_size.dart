import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// [INFO]
// Constant for sizes to be used in the app with respecting 8 pixel rules
class AppSize {
  // [INFO]
  // Sizes that related with width
  static final w2 = 2.0.w;
  static final w4 = 4.0.w;
  static final w8 = 8.0.w;
  static final w12 = 12.0.w;
  static final w16 = 16.0.w;
  static final w20 = 20.0.w;
  static final w24 = 24.0.w;
  static final w28 = 28.0.w;
  static final w32 = 32.0.w;
  static final w36 = 36.0.w;
  static final w40 = 40.0.w;
  static final w48 = 48.0.w;
  static final w56 = 56.0.w;
  static final w64 = 64.0.w;
  static final w72 = 72.0.w;
  static final w80 = 80.0.w;
  static final w96 = 96.0.w;

  // [INFO]
  // Sizes that related with height
  static final h4 = 4.0.h;
  static final h8 = 8.0.h;
  static final h12 = 12.0.h;
  static final h16 = 16.0.h;
  static final h20 = 20.0.h;
  static final h24 = 24.0.h;
  static final h28 = 28.0.h;
  static final h32 = 32.0.h;
  static final h36 = 36.0.h;
  static final h40 = 40.0.h;
  static final h48 = 48.0.h;
  static final h56 = 56.0.h;
  static final h64 = 64.0.h;
  static final h72 = 72.0.h;
  static final h80 = 80.0.h;
  static final h96 = 96.0.h;

  /// [INFO]
  /// Sizes for custom width or height outside the 8 pixel rules
  static double customWidth(double value) => value.w;
  static double customHeight(double value) => value.h;
}

/// [INFO]
/// Constant for gaps to be used in the app with respecting 8 pixel rules
class Gap {
  /// [INFO]
  /// Gaps that related with width
  static final w4 = SizedBox(width: AppSize.w4);
  static final w8 = SizedBox(width: AppSize.w8);
  static final w12 = SizedBox(width: AppSize.w12);
  static final w16 = SizedBox(width: AppSize.w16);
  static final w20 = SizedBox(width: AppSize.w20);
  static final w24 = SizedBox(width: AppSize.w24);
  static final w28 = SizedBox(width: AppSize.w28);
  static final w32 = SizedBox(width: AppSize.w32);
  static final w36 = SizedBox(width: AppSize.w36);
  static final w40 = SizedBox(width: AppSize.w40);
  static final w48 = SizedBox(width: AppSize.w48);
  static final w56 = SizedBox(width: AppSize.w56);
  static final w64 = SizedBox(width: AppSize.w64);
  static final w72 = SizedBox(width: AppSize.w72);
  static final w80 = SizedBox(width: AppSize.w80);

  /// [INFO]
  /// Gaps that related with height
  static final h4 = SizedBox(height: AppSize.h4);
  static final h8 = SizedBox(height: AppSize.h8);
  static final h12 = SizedBox(height: AppSize.h12);
  static final h16 = SizedBox(height: AppSize.h16);
  static final h20 = SizedBox(height: AppSize.h20);
  static final h24 = SizedBox(height: AppSize.h24);
  static final h28 = SizedBox(height: AppSize.h28);
  static final h32 = SizedBox(height: AppSize.h32);
  static final h36 = SizedBox(height: AppSize.h36);
  static final h40 = SizedBox(height: AppSize.h40);
  static final h48 = SizedBox(height: AppSize.h48);
  static final h56 = SizedBox(height: AppSize.h56);
  static final h64 = SizedBox(height: AppSize.h64);
  static final h72 = SizedBox(height: AppSize.h72);
  static final h80 = SizedBox(height: AppSize.h80);

  /// [INFO]
  /// Gaps for custom width or height outside the 8 pixel rules
  static customGapWidth(double value) => SizedBox(
        width: value.w,
      );
  static customGapHeight(double value) => SizedBox(
        width: value.h,
      );
}

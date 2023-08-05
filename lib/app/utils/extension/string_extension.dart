import 'dynamic_extension.dart';

  const image = "https://w0.peakpx.com/wallpaper/563/203/HD-wallpaper-among-us-naruto-among-us-narut.jpg";
extension XNullableString on String? {
  /// [INFO]
  /// Use this for check if its null or empty
  bool get isNullOrEmpty => !isNotNull || this == '';
  String get toEmpty => this ?? '-';
  String get imageDefault => isNullOrEmpty ? image : this!;
}

extension XString on String {
  /// [INFO]
  /// Use this for check if its null or empty
  String get displayJam {
    final jam = split("jam").join("").split("_").map((v) => '$v.00').join("-");
    return jam;
  }
}

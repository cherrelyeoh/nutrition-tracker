import 'package:flutter/material.dart';

class AppPadding {
  /// Standard page-level padding (e.g., main screens)
  static EdgeInsets page(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return EdgeInsets.only(
      left: size.width * 0.05,
      right: size.width * 0.05,
      top: size.height * 0.025,
    );
  }

  /// Horizontal padding only
  static EdgeInsets horizontal(BuildContext context, [double factor = 0.05]) {
    final width = MediaQuery.of(context).size.width;
    return EdgeInsets.symmetric(horizontal: width * factor);
  }

  /// Vertical padding only
  static EdgeInsets vertical(BuildContext context, [double factor = 0.025]) {
    final height = MediaQuery.of(context).size.height;
    return EdgeInsets.symmetric(vertical: height * factor);
  }
}

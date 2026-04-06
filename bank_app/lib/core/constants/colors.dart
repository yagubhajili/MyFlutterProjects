import 'package:flutter/widgets.dart';

class AppColors {
  // Brand Colors
  static const Color primary = Color(0xFF2E5BFF);

  // Text Colors
  static const Color textPrimary = Color(0xFF000000); // Was: titile
  static const Color textSecondary = Color(0xFF999999); // Was: subtitle
  static const Color textLight = Color(0xFFB3B3B3); // Was: skipbutton

  // Component Colors
  static const Color indicatorActive = primary; // Links back to brand color
  static const Color indicatorInactive = Color(0xFFE6E6E6);

  // Backgrounds
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFE9E9E9); // For the arrow button circle
}

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteGray = Color(0xFF42867B);

  // Primary
  static const Color primary = Color(0xFF4D9C9E);
  static const Color primaryDark = Color(0xFF2F6769);
  static const Color primaryLight = Color(0xFFAFCDCB);

  // Secondary
  static const Color teal = Color(0xFF3C8487);
  static const Color mint = Color(0xFF9BC2BB);

  // Background
  static const Color background = Color(0xFFFAFBFB);
  static const Color surface = Color(0xFFFFFFFF);

  // Inputs
  static const Color inputFill = Color(0xFFF5F6F6);
  static const Color inputBorder = Color(0xFFE6EAEA);
  static const Color dashedBorder = Color(0xFF7CB8B8);

  // Text
  static const Color textPrimary = Color(0xFF1D1D1D);
  static const Color textSecondary = Color(0xFF575D5E);
  static const Color hint = Color(0xFF98ABAA);

  // Icons
  static const Color icon = Color(0xFF4D9C9E);
  static const Color iconLight = Color(0xFF9BC2BB);

  // Gradient Button
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFF59B8BE), Color(0xFF2F6769)],
  );
}

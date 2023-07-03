import 'package:flutter/material.dart';

import 'colors.dart';

class AppStyles {
  final themeData = ThemeData(
      colorSchemeSeed: AppColors.primary,
      useMaterial3: true,
      fontFamily: "Manrope",
      scaffoldBackgroundColor: AppColors.background,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            minimumSize: const Size(120, 54),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            minimumSize: const Size(120, 54),
            side: const BorderSide(color: AppColors.primary, width: 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
      ),
      brightness: Brightness.dark);
}

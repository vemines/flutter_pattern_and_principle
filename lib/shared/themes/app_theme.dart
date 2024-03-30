import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/size.dart';

final robotoRegular = GoogleFonts.robotoSerif().fontFamily;

class AppTheme {
  static TextTheme whiteTypography = Typography.material2021().white;

  static ThemeData dark = ThemeData.dark(useMaterial3: true).copyWith(
    brightness: Brightness.dark,
    textTheme: whiteTypography.copyWith(
      bodyMedium: whiteTypography.bodyLarge!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      bodyLarge: whiteTypography.bodyLarge!.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
    appBarTheme: const AppBarTheme().copyWith(backgroundColor: Colors.black),
    colorScheme: const ColorScheme.dark(
      onPrimary: Colors.white,
      primary: Colors.blueAccent,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.all(Dimensions.normal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusBorder.small),
        ),
      ),
    ),
  );
}

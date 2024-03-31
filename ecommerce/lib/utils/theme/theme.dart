import 'package:ecommerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/checkboc_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.light,
    chipTheme: EChipTheme.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: EAppBarTheme.light,
    checkboxTheme: ECheckboxTheme.light,
    bottomSheetTheme: EBottomSheetTheme.light,
    elevatedButtonTheme: EElevatedButtonTheme.light,
    outlinedButtonTheme: EOutlinedButtonTheme.light,
    inputDecorationTheme: ETextFieldTheme.light,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.dark,
    chipTheme: EChipTheme.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: EAppBarTheme.dark,
    checkboxTheme: ECheckboxTheme.dark,
    bottomSheetTheme: EBottomSheetTheme.dark,
    elevatedButtonTheme: EElevatedButtonTheme.dark,
    outlinedButtonTheme: EOutlinedButtonTheme.dark,
    inputDecorationTheme: ETextFieldTheme.dark,
  );
}

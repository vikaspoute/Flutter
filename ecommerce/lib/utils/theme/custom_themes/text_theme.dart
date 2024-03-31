import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  // Light theme
  static TextTheme light = TextTheme(
    // Headline
    headlineLarge: const TextStyle().copyWith(
      fontSize: ESizes.fontXxl,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: ESizes.fontXxl,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: ESizes.fontLg,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    // Title
    titleLarge: const TextStyle().copyWith(
      fontSize: ESizes.fontMd,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: ESizes.fontMd,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: ESizes.fontMd,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),

    // body
    bodyLarge: const TextStyle().copyWith(
      fontSize: ESizes.fontSm,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: ESizes.fontSm,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: ESizes.fontSm,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.5),
    ),

    // Label
    labelLarge: const TextStyle().copyWith(
      fontSize: ESizes.fontXs,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: ESizes.fontXs,
      fontWeight: FontWeight.normal,
      color: Colors.black.withOpacity(0.5),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: ESizes.fontXs,
      fontWeight: FontWeight.normal,
      color: Colors.black.withOpacity(0.3),
    ),
  );

  // dark theme
  static TextTheme dark = TextTheme(
    // Headline
    headlineLarge: const TextStyle().copyWith(
      fontSize: ESizes.fontXxl,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: ESizes.fontXxl,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: ESizes.fontLg,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),

    // Title
    titleLarge: const TextStyle().copyWith(
      fontSize: ESizes.fontMd,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: ESizes.fontMd,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: ESizes.fontMd,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    // body
    bodyLarge: const TextStyle().copyWith(
      fontSize: ESizes.fontSm,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: ESizes.fontSm,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: ESizes.fontSm,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(0.5),
    ),

    // Label
    labelLarge: const TextStyle().copyWith(
      fontSize: ESizes.fontXs,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: ESizes.fontXs,
      fontWeight: FontWeight.normal,
      color: Colors.white.withOpacity(0.5),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: ESizes.fontXs,
      fontWeight: FontWeight.normal,
      color: Colors.white.withOpacity(0.3),
    ),
  );
}

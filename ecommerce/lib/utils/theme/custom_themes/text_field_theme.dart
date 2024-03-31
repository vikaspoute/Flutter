import 'package:flutter/material.dart';

class ETextFieldTheme {
  ETextFieldTheme._();

  static const double _borderRadius = 14.0;

  // Light Theme
  static const TextStyle _lightTextStyle =
      TextStyle(fontSize: 14, color: Colors.black);
  static final TextStyle _lightFloatingLabelStyle =
      TextStyle(color: Colors.black.withOpacity(.8));
  static const Color _lightFocusedBorderColor = Colors.black12;

  static final InputDecorationTheme light = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: _lightTextStyle,
    hintStyle: _lightTextStyle,
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: _lightFloatingLabelStyle,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: _lightFocusedBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );

  // Dark Theme
  static const TextStyle _darkTextStyle =
      TextStyle(fontSize: 14, color: Colors.white);
  static const Color _darkFocusedBorderColor = Colors.white;

  static final InputDecorationTheme dark = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: _darkTextStyle,
    hintStyle: _darkTextStyle,
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: _lightFloatingLabelStyle,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: _darkFocusedBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_borderRadius),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ETextFieldTheme {
  ETextFieldTheme._();

  static const double _borderRadius = ESizes.fontSm;
  static const TextStyle _defaultTextStyle = TextStyle(fontSize: ESizes.fontSm);

  static InputDecorationTheme _buildInputDecorationTheme(
    TextStyle textStyle,
    Color focusedBorderColor,
  ) {
    return InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: textStyle,
      hintStyle: textStyle,
      errorStyle: const TextStyle(fontStyle: FontStyle.normal),
      floatingLabelStyle: TextStyle(color: textStyle.color?.withOpacity(.8)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: const BorderSide(width: 1, color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide(width: 1, color: focusedBorderColor),
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

  // Light Theme
  static final InputDecorationTheme light = _buildInputDecorationTheme(
    _defaultTextStyle.copyWith(color: Colors.black),
    Colors.black12,
  );

  // Dark Theme
  static final InputDecorationTheme dark = _buildInputDecorationTheme(
    _defaultTextStyle.copyWith(color: Colors.white),
    Colors.white,
  );
}

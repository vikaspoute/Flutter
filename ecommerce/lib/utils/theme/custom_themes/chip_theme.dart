import 'package:flutter/material.dart';

class EChipTheme {
  EChipTheme._();

  // light
  static ChipThemeData light = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
    checkmarkColor: Colors.white,
  );

  // dark
  static const ChipThemeData dark = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
    checkmarkColor: Colors.white,
  );
}

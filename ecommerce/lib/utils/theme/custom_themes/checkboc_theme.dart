import 'package:flutter/material.dart';

class ECheckboxTheme {
  ECheckboxTheme._();

  // light
  static CheckboxThemeData light = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith(
      (states) =>
          states.contains(MaterialState.selected) ? Colors.white : Colors.black,
    ),
    fillColor: MaterialStateProperty.resolveWith(
      (states) => states.contains(MaterialState.selected)
          ? Colors.blue
          : Colors.transparent,
    ),
  );

  // dark
  static CheckboxThemeData dark = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith(
      (states) =>
          states.contains(MaterialState.selected) ? Colors.white : Colors.black,
    ),
    fillColor: MaterialStateProperty.resolveWith(
      (states) => states.contains(MaterialState.selected)
          ? Colors.blue
          : Colors.transparent,
    ),
  );
}

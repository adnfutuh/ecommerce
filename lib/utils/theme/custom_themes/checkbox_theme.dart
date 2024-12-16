import 'package:flutter/material.dart';

import '../../utils.dart';

class MyCheckboxTheme {
  MyCheckboxTheme._();
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        Colors.black;
      }
      return null;
    }),
    fillColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return MyColors.primary;
      } else {
        Colors.transparent;
      }
      return null;
    }),
  );
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        Colors.black;
      }
      return null;
    }),
    fillColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return MyColors.primary;
      } else {
        Colors.transparent;
      }
      return null;
    }),
  );
}

import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyChipTheme {
  MyChipTheme._();
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: MyColors.primary,
    padding: const EdgeInsets.all(12),
    checkmarkColor: Colors.white,
  );
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: MyColors.primary,
    padding: EdgeInsets.all(12),
    checkmarkColor: Colors.white,
  );
}

import 'package:flutter/material.dart';

import '../../generated/fonts.gen.dart';
import 'custom_themes/custom_theme.dart';

class MyAppTheme {
  MyAppTheme._();
  static ThemeData lightTheme = ThemeData(
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    useMaterial3: true,
    fontFamily: FontFamily.poppins,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTextTheme,
    inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlineButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    useMaterial3: true,
    fontFamily: FontFamily.poppins,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyTextTheme.dartTextTheme,
    inputDecorationTheme: MyTextFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlineButtonTheme,
  );
}

import 'package:flutter/material.dart';

Color mainButtonColor = Color.fromRGBO(192, 235, 80, 1);

Color primaryColor = Color.fromRGBO(22, 58, 51, 1);

ThemeData mainTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  primaryColor: primaryColor,
  useMaterial3: true,
  buttonTheme: ButtonThemeData(
    buttonColor: mainButtonColor,
    height: 60,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

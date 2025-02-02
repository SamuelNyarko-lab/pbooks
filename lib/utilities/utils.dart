import 'package:flutter/material.dart';

Color mainButtonColor = Color(0xFFBFFF00);

Color primaryColor = Color.fromRGBO(22, 58, 51, 1);

ThemeData mainTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
  primaryColor: primaryColor,
  useMaterial3: true,
  fontFamily: 'Poppins',
  buttonTheme: ButtonThemeData(
    buttonColor: mainButtonColor,
    height: 60,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      outlineBorder: BorderSide(
        color: Colors.white,
        width: 0.5,
      )),
);

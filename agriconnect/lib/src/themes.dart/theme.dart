import 'package:flutter/material.dart';

class ColorSchemes {
  static Color primary = Color(0xff3A5A40);
  static Color secondary = Color(0xff588157);
  static Color tertiary = Color(0xffA3B18A);
  static Color background = Color(0xffDAD7CD);
}

final ThemeData agriculturalTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: ColorSchemes.primary,
  fontFamily: 'Nunito',
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
    bodySmall: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    buttonColor: Color(0xFF4CAF50), // Green
    textTheme: ButtonTextTheme.primary,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: ColorSchemes.background,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorSchemes.primary),
      borderRadius: BorderRadius.circular(10.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10.0),
    ),
    labelStyle: TextStyle(color: ColorSchemes.primary),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: ColorSchemes.primary,
          elevation: 8.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
);

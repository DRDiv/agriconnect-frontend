import 'package:flutter/material.dart';

final ThemeData agriculturalTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF4CAF50),
  hintColor: Color(0xFF2196F3),
  appBarTheme: AppBarTheme(color: Color(0xFF4CAF50)),
  fontFamily: 'Nunito',
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
);

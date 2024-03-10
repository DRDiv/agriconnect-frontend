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
    textSelectionTheme:
        TextSelectionThemeData(cursorColor: ColorSchemes.primary),
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
        focusColor: ColorSchemes.primary,
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
        iconColor: ColorSchemes.primary,
        hoverColor: ColorSchemes.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: ColorSchemes.primary,
            elevation: 8.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
    dialogTheme: DialogTheme(
      backgroundColor: Color.fromARGB(255, 218, 165, 128),
      titleTextStyle: TextStyle(
        color: ColorSchemes.primary,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: TextStyle(
        color: ColorSchemes.primary,
        fontSize: 16.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    listTileTheme: ListTileThemeData(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        subtitleTextStyle: TextStyle(
            fontSize: 16, fontStyle: FontStyle.italic, color: Colors.amber),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        iconColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF135D5E),
        unselectedItemColor: ColorSchemes.tertiary,
        selectedItemColor: Colors.amber,
        selectedLabelStyle:
            const TextStyle(fontSize: 14.0, fontFamily: 'Hind')));

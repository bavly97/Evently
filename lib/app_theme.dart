import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xff5669FF);
  static const Color backgroundLight = Color(0xffF2FEFF);
  static const Color backgroundDark = Color(0xff101127);
  static const Color grey = Color(0xff7B7B7B);
  static const Color white = Color(0xffFFFFFF);
  static const Color red = Color(0xffFF5659);
  static const Color black = Color(0xff1C1C1C);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: backgroundLight,
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 14,
        color: grey,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppTheme.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppTheme.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppTheme.red,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
        textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: primary,
        foregroundColor: white,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    textTheme: TextTheme(
      labelSmall: TextStyle(
        fontSize: 10,
        color: black,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: black,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: black,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        color: white,
        fontWeight: FontWeight.w500,
      ),
    ),
    );
  static ThemeData darkTheme = ThemeData();
}

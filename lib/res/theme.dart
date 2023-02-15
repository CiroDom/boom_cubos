import 'package:flutter/material.dart';

const primaryColor = Color(0xFFEB5757);

class BoomTheme {
  static ThemeData get theme => ThemeData(
    scaffoldBackgroundColor: Colors.white,

    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      )
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        minimumSize: Size.fromHeight(70.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70.0)
        ),
        textStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        )
      )
    )
  );
}
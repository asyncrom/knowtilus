import 'package:flutter/material.dart';

class Marine {
  static ThemeData get() {
    return ThemeData(
        backgroundColor: const Color(0xFF072C38),
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Color(0xFFA6DAD8), fontSize: 17.0),
          headline1: TextStyle(
              color: Color(0xFF498CB6),
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF64CCC5),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF40A7BB),
            shadowColor: const Color(0xFF64CCC5),
            elevation: 10.0,
            minimumSize: const Size(200, 50),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF072538),
        ));
  }
}

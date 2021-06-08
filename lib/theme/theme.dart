import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    bottomAppBarTheme: BottomAppBarTheme(
      elevation: 0,
      color: Color(0xff1c1c1e),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xff1c1c1e),
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xff1c1c1e),
    textTheme: TextTheme(
      headline3: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffff9f0a),
        ),
      ),
    ),
  );
}

ThemeData lightTheme() {
  return ThemeData(
    bottomAppBarTheme: BottomAppBarTheme(
      elevation: 0,
      color: Color(0xfff2f2f7),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xfff2f2f7),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xfff2f2f7),
    textTheme: TextTheme(
      headline3: TextStyle(
        color: Color(0xff1c1c1e),
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffff9f0a),
        ),
      ),
    ),
  );
}

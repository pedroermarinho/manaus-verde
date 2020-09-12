import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData() {
    return ThemeData(
      textTheme: _textTheme(),
      primaryColor: Color(0xff181818),
      accentColor: Color(0xffBBBCBC),
      backgroundColor: Color(0xffefeeec),
      appBarTheme: AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(
          color: Color(0xffe6c131),
        ),
      ),
      accentIconTheme: IconThemeData(
        color: Color(0xffe6c131),
      ),
      iconTheme: IconThemeData(
        color: Color(0xffe6c131),
        size: 35,
      ),
    );
  }

  TextTheme _textTheme() {
    return TextTheme(
      title: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}

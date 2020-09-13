import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData() {
    return ThemeData(
      textTheme: _textTheme(),
      primaryColor: Color(0xffBBBCBC),
      accentColor: Color(0xffBBBCBC),
      backgroundColor: Color(0xffefeeec),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.green,
        ),
      ),
      accentIconTheme: IconThemeData(
        color: Colors.green,
      ),
      iconTheme: IconThemeData(
        color: Colors.green,
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

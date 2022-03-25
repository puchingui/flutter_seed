import 'package:flutter/material.dart';

class OrangeTheme {
  static const Color primary = Colors.orange;

  static final ThemeData orange = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}

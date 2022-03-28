import 'package:flutter/material.dart';

class IndigoTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData indigo = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
import 'package:flutter/material.dart';
import 'package:flutter_seed/themes/indigo_theme.dart';
import 'package:flutter_seed/themes/themes.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData dark = ThemeData.dark();
  static final ThemeData light = ThemeData.light();
  static final ThemeData indigo = IndigoTheme.indigo;
  static final ThemeData orange = OrangeTheme.orange;
}

import 'package:flutter/material.dart';

import 'package:flutter_seed/themes/themes.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  // Constructor
  ThemeProvider({required bool isDarkMode})
      : currentTheme = isDarkMode ? AppTheme.dark : AppTheme.light;

  dark() {
    currentTheme = AppTheme.dark;
    notifyListeners();
  }

  light() {
    currentTheme = AppTheme.light;
    notifyListeners();
  }

  indigo() {
    currentTheme = AppTheme.indigo;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  // Constructor
  ThemeProvider({required bool isDarkMode})
      : currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  // Methods

  setDarkTheme() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }

  setLightTheme() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }
}

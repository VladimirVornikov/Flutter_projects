import "package:flutter/material.dart";
import "package:project3/theme/theme.dart";

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ligthMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == ligthMode) {
      themeData = darkMode;
    } else {
      themeData = ligthMode;
    }
  }
}


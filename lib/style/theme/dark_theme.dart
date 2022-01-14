import 'package:flutter/material.dart';
import 'package:ikhdemny/style/theme/theme_pref.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefs.setDarkTheme(value);

    notifyListeners();
  }
}

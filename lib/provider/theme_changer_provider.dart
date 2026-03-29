import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  /// 0 for light
  /// 1 for dark
  /// 2 for system

  int _themeMode = 0;
  get themeMode => _themeMode;

  ThemeMode get theme {
    if (themeMode == 0) {
      return ThemeMode.light;
    } else if (themeMode == 1) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  void setmode(int value) {
    _themeMode = value;
    notifyListeners();
  }
}

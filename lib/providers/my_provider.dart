import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String local = "en";
  ThemeMode theme = ThemeMode.light;

  changeLanguage(String languageCode) {
    local = languageCode;
    notifyListeners();
  }

  changeMode(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }
}

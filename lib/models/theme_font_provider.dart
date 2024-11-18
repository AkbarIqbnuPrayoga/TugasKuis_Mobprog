import 'package:flutter/material.dart';

class ThemeFontProvider extends ChangeNotifier {
  // Define themes
final List<ThemeData> _themes = [
  ThemeData(primaryColor: Colors.blue, scaffoldBackgroundColor: Colors.white),
  ThemeData(primaryColor: Colors.green, scaffoldBackgroundColor: Colors.lightGreen[100]!),
  ThemeData(primaryColor: Colors.red, scaffoldBackgroundColor: Colors.red[100]!),
];

  // Define fonts
  final List<String> _fonts = [
    'Roboto', // Default font
    'Lobster',
    'Merriweather',
  ];

  int _currentThemeIndex = 0;
  int _currentFontIndex = 0;

  ThemeData get theme => _themes[_currentThemeIndex];
  String get font => _fonts[_currentFontIndex];

  void updateTheme(int index) {
    _currentThemeIndex = index;
    notifyListeners();
  }

  void updateFont(int index) {
    _currentFontIndex = index;
    notifyListeners();
  }
}

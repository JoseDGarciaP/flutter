import 'package:flutter/material.dart';

List<Color> _colorTheme = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.purple,
];

class AppTheme {
  int selectedColor;

  AppTheme({required this.selectedColor});

  ThemeData getThemeData() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
      appBarTheme: AppBarTheme(backgroundColor: _colorTheme[selectedColor]),
    );
  }
}

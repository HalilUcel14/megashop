import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

final class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = LightTheme().theme;
  static ThemeData darkTheme = DarkTheme().theme;
}

import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

final class LightScheme implements IColor {
  @override
  ColorScheme colorScheme = const ColorScheme.light(
    primary: Color(0xFF6200EE),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF3700B3),
    secondary: Color(0xFF03DAC6),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFF018786),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFF000000),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color.fromARGB(255, 146, 0, 27),
  );
}

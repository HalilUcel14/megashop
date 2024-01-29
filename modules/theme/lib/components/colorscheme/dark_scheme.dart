import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

final class DarkScheme implements IColor {
  @override
  ColorScheme colorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
    accentColor: Colors.blueAccent,
    brightness: Brightness.dark,
  );
}

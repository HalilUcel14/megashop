import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

final class DarkTheme extends ITheme {
  DarkTheme();

  final ColorScheme colorScheme = DarkScheme().colorScheme;

  @override
  ThemeData get theme => ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: colorScheme,
        textTheme: WTextTheme(colorScheme.onBackground),
        primaryTextTheme: WTextTheme(colorScheme.primary),
      );
}

import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

final class LightTheme extends ITheme {
  LightTheme();

  final ColorScheme colorScheme = LightScheme().colorScheme;

  @override
  ThemeData get theme => ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: colorScheme,
        textTheme: WTextTheme(colorScheme.onBackground),
        primaryTextTheme: WTextTheme(colorScheme.primary),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      );
}

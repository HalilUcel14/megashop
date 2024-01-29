import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

final class WTextTheme extends TextTheme {
  final Color color;

  WTextTheme(this.color)
      : super(
          displayLarge: WTextStyle.displayLarge(color: color),
          displayMedium: WTextStyle.displayMedium(color: color),
          displaySmall: WTextStyle.displaySmall(color: color),
          headlineLarge: WTextStyle.headlineLarge(color: color),
          headlineMedium: WTextStyle.headlineMedium(color: color),
          headlineSmall: WTextStyle.headlineSmall(color: color),
          titleLarge: WTextStyle.titleLarge(color: color),
          titleMedium: WTextStyle.titleMedium(color: color),
          titleSmall: WTextStyle.titleSmall(color: color),
          bodyLarge: WTextStyle.bodyLarge(color: color),
          bodyMedium: WTextStyle.bodyMedium(color: color),
          bodySmall: WTextStyle.bodySmall(color: color),
          labelLarge: WTextStyle.labelLarge(color: color),
          labelMedium: WTextStyle.labelMedium(color: color),
          labelSmall: WTextStyle.labelSmall(color: color),
        );
}

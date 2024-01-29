import 'package:flutter/material.dart';

@immutable
final class WTextStyle extends TextStyle {
  const WTextStyle.displayLarge({super.color})
      : super(
          fontSize: 57,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.25,
        );

  const WTextStyle.displayMedium({super.color})
      : super(
          fontSize: 45,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );

  const WTextStyle.displaySmall({super.color})
      : super(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );

  const WTextStyle.headlineLarge({super.color})
      : super(
          fontSize: 28,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.25,
        );

  const WTextStyle.headlineMedium({super.color})
      : super(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );

  const WTextStyle.headlineSmall({super.color})
      : super(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );

  const WTextStyle.titleLarge({super.color})
      : super(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.25,
        );

  const WTextStyle.titleMedium({super.color})
      : super(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        );

  const WTextStyle.titleSmall({super.color})
      : super(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        );

  const WTextStyle.bodyLarge({super.color})
      : super(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        );

  const WTextStyle.bodyMedium({super.color})
      : super(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        );

  const WTextStyle.bodySmall({super.color})
      : super(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
        );

  const WTextStyle.labelLarge({super.color})
      : super(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        );

  const WTextStyle.labelMedium({super.color})
      : super(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        );

  const WTextStyle.labelSmall({super.color})
      : super(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        );
}

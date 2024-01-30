import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

@immutable
final class PrimaryText extends Text {
  const PrimaryText({
    super.key,
    required this.text,
    required this.styleType,
    super.style,
    super.locale,
    super.maxLines,
    super.overflow,
    super.semanticsLabel,
    super.selectionColor,
    super.softWrap,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.textHeightBehavior,
    super.textScaleFactor,
    super.textWidthBasis,
  }) : super(
          text,
        );

  final String text;
  final TextStyles styleType;

  TextStyle? _style(BuildContext context) {
    switch (styleType) {
      case TextStyles.displayLarge:
        return Theme.of(context).primaryTextTheme.displayLarge;
      case TextStyles.displayMedium:
        return Theme.of(context).primaryTextTheme.displayMedium;
      case TextStyles.displaySmall:
        return Theme.of(context).primaryTextTheme.displaySmall;
      case TextStyles.headlineLarge:
        return Theme.of(context).primaryTextTheme.headlineLarge;
      case TextStyles.headlineMedium:
        return Theme.of(context).primaryTextTheme.headlineMedium;
      case TextStyles.headlineSmall:
        return Theme.of(context).primaryTextTheme.headlineSmall;
      case TextStyles.titleLarge:
        return Theme.of(context).primaryTextTheme.titleLarge;
      case TextStyles.titleMedium:
        return Theme.of(context).primaryTextTheme.titleMedium;
      case TextStyles.titleSmall:
        return Theme.of(context).primaryTextTheme.titleSmall;
      case TextStyles.labelLarge:
        return Theme.of(context).primaryTextTheme.labelLarge;
      case TextStyles.labelMedium:
        return Theme.of(context).primaryTextTheme.labelMedium;
      case TextStyles.labelSmall:
        return Theme.of(context).primaryTextTheme.labelSmall;
    }
  }

  ///
  @override
  Text build(BuildContext context) {
    return Text(
      text,
      style: _style(context)?.merge(style),
    );
  }
}

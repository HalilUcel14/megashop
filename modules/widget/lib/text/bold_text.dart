import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

@immutable
final class BoldText extends Text {
  const BoldText({
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
        return Theme.of(context).textTheme.displayLarge;
      case TextStyles.displayMedium:
        return Theme.of(context).textTheme.displayMedium;
      case TextStyles.displaySmall:
        return Theme.of(context).textTheme.displaySmall;
      case TextStyles.headlineLarge:
        return Theme.of(context).textTheme.headlineLarge;
      case TextStyles.headlineMedium:
        return Theme.of(context).textTheme.headlineMedium;
      case TextStyles.headlineSmall:
        return Theme.of(context).textTheme.headlineSmall;
      case TextStyles.titleLarge:
        return Theme.of(context).textTheme.titleLarge;
      case TextStyles.titleMedium:
        return Theme.of(context).textTheme.titleMedium;
      case TextStyles.titleSmall:
        return Theme.of(context).textTheme.titleSmall;
      case TextStyles.labelLarge:
        return Theme.of(context).textTheme.labelLarge;
      case TextStyles.labelMedium:
        return Theme.of(context).textTheme.labelMedium;
      case TextStyles.labelSmall:
        return Theme.of(context).textTheme.labelSmall;
    }
  }

  ///
  @override
  Text build(BuildContext context) {
    return Text(
      text,
      style:
          _style(context)?.copyWith(fontWeight: FontWeight.bold).merge(style),
    );
  }
}

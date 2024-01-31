import 'package:flutter/material.dart';

final class WColumnWithSpacing extends Column {
  //
  WColumnWithSpacing({
    Key? key,
    double spacing = 16,
    required List<Widget> child,
    super.crossAxisAlignment,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
  }) : super(
            key: key,
            children: child
                .expand<Widget>((element) => [
                      element,
                      SizedBox(height: spacing),
                    ])
                .toList());
}

import 'package:flutter/material.dart';

final class ElevatedCircleButton extends ElevatedButton {
  ElevatedCircleButton({
    super.key,
    super.autofocus,
    super.clipBehavior,
    super.focusNode,
    super.onFocusChange,
    super.onHover,
    super.onLongPress,
    super.statesController,
    required super.onPressed,
    required super.child,
  }) : super(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
          ),
        );
}

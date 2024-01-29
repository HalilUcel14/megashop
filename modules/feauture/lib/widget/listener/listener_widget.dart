import 'package:flutter/material.dart';

class ThemeManagerWidget<ThemeData> extends StatelessWidget {
  const ThemeManagerWidget({
    super.key,
    required this.notifier,
    required this.builder,
  });

  //
  final ValueNotifier<ThemeData> notifier;
  final Widget Function(BuildContext context, ThemeData theme, Widget? child)
      builder;
  //
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: notifier,
      builder: builder,
    );
  }
}

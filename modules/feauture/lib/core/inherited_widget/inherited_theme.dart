import 'package:flutter/material.dart';

class IThemeWidget extends InheritedWidget {
  const IThemeWidget(this.theme, this.changeTheme,
      {super.key, required Widget child})
      : super(child: child);

  final ThemeData theme;
  final VoidCallback changeTheme;

  static IThemeWidget? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<IThemeWidget>();
  }

  static IThemeWidget of(BuildContext context) {
    final value = maybeOf(context);
    assert(value != null, "IThemeWidget return Null");
    return value!;
  }

  @override
  bool updateShouldNotify(IThemeWidget oldWidget) {
    return oldWidget.theme != theme;
  }
}

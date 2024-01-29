import 'package:flutter/material.dart';

final class ThemeNotifier extends ValueNotifier<ThemeData> {
  ThemeNotifier(ThemeData value) : super(value);

  void changeTheme(ThemeData theme) {
    value = theme;
    notifyListeners();
  }
}

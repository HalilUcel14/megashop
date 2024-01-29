import 'package:flutter/material.dart';

@immutable
final class AppDuration {
  const AppDuration._();

  static Duration microSeconds(int value) => Duration(microseconds: value);
  static Duration milliSeconds(int value) => Duration(milliseconds: value);
  static Duration seconds(int value) => Duration(seconds: value);
  static Duration minutes(int value) => Duration(minutes: value);
  static Duration hours(int value) => Duration(hours: value);
  static Duration days(int value) => Duration(days: value);
}

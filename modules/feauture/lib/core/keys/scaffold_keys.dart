import 'package:flutter/material.dart';

@immutable
final class AppKeys {
  const AppKeys._();

  static final GlobalKey<ScaffoldState> splash = GlobalKey<ScaffoldState>();
  static final GlobalKey<ScaffoldState> home = GlobalKey<ScaffoldState>();
}

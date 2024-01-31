import 'package:flutter/material.dart';

@immutable
final class AppView {
  const AppView._();

  static const mobileView = 500;
  static const tabletView = 800;
  static const desktopView = 1200;
  static const quadView = 2000;

  //

  static const Size appBarSize = Size.fromHeight(80);
}

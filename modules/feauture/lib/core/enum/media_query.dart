import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  //
  Size get appSize => MediaQuery.sizeOf(this);
  //
  EdgeInsets get padding => MediaQuery.paddingOf(this);
  //
  Orientation get orientation => MediaQuery.orientationOf(this);
  //
  EdgeInsets get viewInstert => MediaQuery.viewInsetsOf(this);
  //
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);
  //
}

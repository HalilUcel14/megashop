import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  SizedBox withSizedBox({required double height, required double width}) {
    return SizedBox(
      height: height,
      width: width,
      child: this,
    );
  }
}

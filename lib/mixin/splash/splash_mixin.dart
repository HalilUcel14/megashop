import 'dart:async';

import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';

import '../../view/splash/splash_view.dart';

mixin SplashStateMixin on State<SplashView> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(AppDuration.seconds(2), () => timeSpamp());
  }

  Future<void> timeSpamp() async {
    if (!context.mounted) return;
    //
    return context.pushNamedAndRemoveUntil(RouteEnum.home.name);
  }
}

import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';

import '../../view/home/home_view.dart';
import '../../view/splash/splash_view.dart';

final class AppRoute {
  const AppRoute._();

  ///
  static Map<String, Widget Function(BuildContext)> route = {
    RouteEnum.splash.name: (context) => const SplashView(),
    RouteEnum.home.name: (context) => const HomeView(),
  };
}

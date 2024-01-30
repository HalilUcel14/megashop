import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

import '../../mixin/splash/splash_mixin.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SplashStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: AppKeys.splash,
      body: child(),
    );
  }

  Center child() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WIconAssetCache(
              imagePath: IconEnum.store.png,
              imageSize: AppSize.teta.toDouble(),
            ),
          ],
        ),
      );
}

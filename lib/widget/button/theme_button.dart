import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';

import '../../core/starter/app_theme.dart';
import '../../core/starter/app_valuelistener.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppValueNotifier.themeNotifier,
      builder: (context, theme, child) {
        //
        bool isLightTheme = theme == AppTheme.lightTheme;
        //
        return ElevatedCircleButton(
          onPressed: () => AppValueNotifier.themeNotifier.changeTheme(
            isLightTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
          ),
          child: WIconAsset(
            path: isLightTheme ? IconEnum.light.png : IconEnum.dark.png,
          ),
        );
      },
    );
  }
}

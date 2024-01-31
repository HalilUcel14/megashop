import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';

import 'core/route/route.dart';
import 'core/starter/app_string.dart';
import 'core/starter/app_theme.dart';
import 'core/starter/app_valuelistener.dart';

Future<void> main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  //
  await HiveManager().open();

  ///
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppValueNotifier.themeNotifier,
      builder: (context, theme, child) {
        return MaterialApp(
          title: AppString.appTitle,
          debugShowCheckedModeBanner: false,
          //
          theme: theme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          //
          routes: AppRoute.route,
          initialRoute: RouteEnum.splash.name,
          //
        );
      },
    );
  }
}

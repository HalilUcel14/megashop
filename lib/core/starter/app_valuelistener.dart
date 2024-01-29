import 'package:feauture/feauture.dart';

import 'app_theme.dart';

final class AppValueNotifier {
  const AppValueNotifier._();

  static ThemeNotifier themeNotifier = ThemeNotifier(AppTheme.lightTheme);
}

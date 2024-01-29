import '../../core/starter/app_theme.dart';
import '../../core/starter/app_valuelistener.dart';

mixin ChangeThemeMixin {
  final currentTheme = AppValueNotifier.themeNotifier.value;

  bool get isLightTheme => currentTheme == AppTheme.lightTheme;

  void get changeTheme {
    AppValueNotifier.themeNotifier.changeTheme(
      isLightTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
    );
  }
}

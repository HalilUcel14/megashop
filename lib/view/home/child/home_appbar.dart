part of '../home_view.dart';

class _HomeAppBar extends StatelessWidget
    with ChangeThemeMixin
    implements PreferredSizeWidget {
  _HomeAppBar();

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      toolbarHeight: AppView.appBarSize.height,
      actions: const [
        ThemeButton(),
      ],
    );
  }

  @override
  Size get preferredSize => AppView.appBarSize;
}

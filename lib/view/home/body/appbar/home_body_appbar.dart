part of '../../home_view.dart';

class _BodyAppBar extends StatelessWidget {
  const _BodyAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppView.appBarSize.height,
      decoration: BoxDecoration(
        color: context.colorScheme.primary.withOpacity(
          OpacityEnum.low.size,
        ),
      ),
      child: const Row(
        children: [
          Spacer(),
          ThemeButton(),
        ],
      ),
    );
  }
}

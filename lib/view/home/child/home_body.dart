part of '../home_view.dart';

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        controller: AppScroll.homeScroll,
        child: const Column(
          children: [
            _BodyHomeField(),
          ],
        ),
      ),
    );
  }
}

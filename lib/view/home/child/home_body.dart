part of '../home_view.dart';

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        controller: AppScroll.homeScroll,
        child: Column(
          children: [
            const _BodyHomeField(),
            const _BodyFeauture(),
            Container().withSizedBox(height: 1000, width: double.infinity),
          ],
        ),
      ),
    );
  }
}

part of '../../home_view.dart';

class _BodyHomeField extends StatelessWidget {
  const _BodyHomeField();

  @override
  Widget build(BuildContext context) {
    return imageContainer(context);
  }

  Widget imageContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ViewHigh.large.size,
      //
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: ViewOpacity.high.size,
          image: AssetImage(
            ImageEnum.home.jpg,
          ),
        ),
      ),
      child: imageChild(context),
    );
  }

  Center imageChild(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(AppSize.ennea.toDouble()),
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            AppSize.tetra.toDouble(),
          ),
        ),
        child: PrimaryText(
          text: "${HomeViewText.tr['appName']}",
          styleType: TextStyles.displayMedium,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}

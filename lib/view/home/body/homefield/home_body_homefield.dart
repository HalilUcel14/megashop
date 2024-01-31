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
          opacity: OpacityEnum.high.size,
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
        padding: AppSize.ennea.withPaddingAll,
        //
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: AppSize.tetra.radiusCircle,
        ),
        //
        child: PrimaryBoldText(
          text: "${HomeViewText.tr['appName']}",
          styleType: TextStyles.displayMedium,
          style: TextStyle(
            color: context.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}

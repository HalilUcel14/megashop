part of '../../home_view.dart';

class _BodyHomeField extends StatelessWidget {
  const _BodyHomeField();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imageContainer(),
        Container().withSizedBox(height: 1000, width: double.infinity),
        // Row(
        //   children: [
        //     aspectIcon(),
        //   ],
        // ).withSizedBox(height: 600, width: double.infinity),
      ],
    );
  }

  Widget imageContainer() {
    return Container(
      width: double.infinity,
      height: 1000,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(36),
          ),
          child: const PrimaryText(
            text: 'İşletmem',
            styleType: TextStyles.displayMedium,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.8,
          image: AssetImage(ImageEnum.home.jpg),
        ),
      ),
    );
  }

  Widget aspectIcon() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: WIconAsset(
        size: AppSize.teta.toDouble(),
        path: ImageEnum.home.jpg,
      ),
    );
  }

  Widget aspectTitle() {
    return const AspectRatio(
      aspectRatio: 1,
      child: Column(
        children: [
          PrimaryText(
            text: 'Maaliyet',
            styleType: TextStyles.displayMedium,
          ),
        ],
      ),
    );
  }
}

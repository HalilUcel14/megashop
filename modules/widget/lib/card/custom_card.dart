import 'package:flutter/material.dart';
import 'package:widget/text/index.dart';
import 'package:widget/widget.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.assetImage,
    required this.title,
    required this.detail,
    this.aspectRatio = 9 / 16,
  });

  final double aspectRatio;
  final String assetImage;
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    //

    //
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: LayoutBuilder(
        builder: (context, constrain) {
          //
          //
          TextStyles titleStyle() => constrain.maxWidth > 500
              ? TextStyles.headlineLarge
              : constrain.maxWidth > 350
                  ? TextStyles.headlineMedium
                  : TextStyles.headlineSmall;
          //
          TextStyles detailStyle() => constrain.maxWidth > 500
              ? TextStyles.titleLarge
              : constrain.maxWidth > 350
                  ? TextStyles.titleMedium
                  : TextStyles.titleSmall;
          //
          //
          return Card(
            // --------------------------------------
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ----------------------------------
                WIconAsset(
                  path: assetImage,
                  size: constrain.maxHeight * PercentEnum.pQuarter.size,
                  alignment: Alignment.center,
                ),
                // ----------------------------------
                PrimaryText(
                  text: title,
                  styleType: titleStyle(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                // ----------------------------------
                Divider(color: context.colorScheme.onBackground),
                // ----------------------------------
                NormalText(
                  text: detail,
                  styleType: detailStyle(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

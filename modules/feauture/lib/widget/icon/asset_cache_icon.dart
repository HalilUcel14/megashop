import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';

final class WIconAssetCache extends StatefulWidget {
  const WIconAssetCache({
    super.key,
    required this.imagePath,
    this.imageSize = 48,
    this.filterQuality = FilterQuality.high,
    this.semanticLabel = 'Icon',
    this.errorBuilder,
  });
  //
  final String imagePath;
  final double imageSize;
  final FilterQuality filterQuality;
  final String? semanticLabel;
  final Widget Function(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  )? errorBuilder;
  //
  @override
  State<WIconAssetCache> createState() => _WIconAssetCacheState();
}

class _WIconAssetCacheState extends State<WIconAssetCache> {
  late Image image;

  @override
  void initState() {
    super.initState();
    image = Image.asset(
      widget.imagePath,
      width: widget.imageSize,
      height: widget.imageSize,
      filterQuality: widget.filterQuality,
      semanticLabel: widget.semanticLabel,
      errorBuilder: widget.errorBuilder ??
          (_, Object error, StackTrace? stackTrace) {
            return WSnapshotErrorWidget(
              error: error.toString(),
            );
          },
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(image.image, context);
    super.didChangeDependencies();
  }

  @override
  Image build(BuildContext context) {
    return image;
  }
}

import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final double width, height, padding;
  final Color? imageColor;
  final BoxFit fit;
  final String image;
  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = 8,
    this.imageColor,
    this.fit = BoxFit.contain,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      child: Image(
        fit: fit,
        color: imageColor,
        image: AssetImage(image),
      ),
    );
  }
}

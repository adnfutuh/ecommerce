import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  final String title;
  final int maxLines;
  final bool smallSize;
  final TextAlign textAlign;
  const ProductTitleText({
    super.key,
    required this.title,
    this.maxLines = 2,
    this.smallSize = false,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.bodyMedium,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

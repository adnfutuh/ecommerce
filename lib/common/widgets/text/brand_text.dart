import 'package:ecommerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandText extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  const BrandText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxLines,
      style: switch (brandTextSize) {
        TextSizes.small =>
          Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
        TextSizes.medium =>
          Theme.of(context).textTheme.bodyLarge!.apply(color: textColor),
        TextSizes.large =>
          Theme.of(context).textTheme.titleLarge!.apply(color: textColor),
      },
    );
  }
}

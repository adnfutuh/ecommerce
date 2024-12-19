import 'package:ecommerce/common/widgets/text/brand_text.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BrandTitleWithFerivedIcon extends StatelessWidget {
  final String title;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  const BrandTitleWithFerivedIcon({
    super.key,
    this.textColor,
    this.iconColor = MyColors.primary,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
    this.brandTextSizes = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BrandText(
          title: title,
          maxLines: maxLines,
          textColor: textColor,
          textAlign: textAlign,
          brandTextSize: brandTextSizes,
        ),
        const SizedBox(width: 6),
        Icon(
          Iconsax.verify_bold,
          color: iconColor,
          size: 18,
        )
      ],
    );
  }
}

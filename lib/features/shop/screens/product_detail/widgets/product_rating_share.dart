import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProductRatingShare extends StatelessWidget {
  const ProductRatingShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Iconsax.star_bold,
                  color: MyColors.secondary,
                  size: 24,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: " 5.0 ",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '(199)')
                ]))
              ],
            ),
            const CircularIcon(icon: Icons.share, size: 24),
          ],
        )
      ],
    );
  }
}

import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/circular_image.dart';
import 'package:ecommerce/common/widgets/text/brand_text.dart';
import 'package:ecommerce/common/widgets/text/brand_title_with_verifed_icon.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/utils.dart';

class BarndCard extends StatelessWidget {
  final bool showBorder;
  const BarndCard({
    super.key,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: RoundedContainer(
        showBorder: showBorder,
        bgColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                image: Assets.icons.brands.nike.path,
                imageColor: dark ? MyColors.white : MyColors.dark,
              ),
            ),
            const Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleWithFerivedIcon(
                    title: 'Nike',
                    brandTextSizes: TextSizes.large,
                  ),
                  SizedBox(height: 4),
                  BrandText(title: '256 products'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/circular_image.dart';
import 'package:ecommerce/common/widgets/text/brand_title_with_verifed_icon.dart';
import 'package:ecommerce/common/widgets/text/price_text.dart';
import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              padding: const EdgeInsetsDirectional.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              radius: 8,
              bgColor: MyColors.secondary.withValues(alpha: 0.8),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: MyColors.black),
              ),
            ),
            const SizedBox(width: 16),
            const PriceText(
              price: '250',
              lineThrough: true,
            ),
            const SizedBox(width: 16),
            const PriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: 8),
        const ProductTitleText(title: "Green Nike Air Shoes"),
        const SizedBox(height: 8),
        Row(
          children: [
            const ProductTitleText(title: "Status"),
            const SizedBox(width: 16),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            CircularImage(
              height: 40,
              width: 40,
              image: Assets.icons.brands.nike.path,
              imageColor: dark ? MyColors.white : MyColors.black,
            ),
            const BrandTitleWithFerivedIcon(
              title: "Nike",
              brandTextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}

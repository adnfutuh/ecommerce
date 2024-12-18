import 'package:ecommerce/common/styles/shadow_style.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/price_text.dart';
import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(16),
          color: dark ? MyColors.darkerGrey : MyColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsetsDirectional.all(8),
              bgColor: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  Image(
                    fit: BoxFit.contain,
                    image: AssetImage(Assets.images.products.nikeShoes.path),
                  ),
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      radius: 8,
                      bgColor: MyColors.secondary.withOpacity(0.8),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MyColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -1,
                    right: -12,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.heart_outline)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(width: 6),
                      const Icon(
                        Iconsax.verify_bold,
                        color: MyColors.primary,
                        size: 18,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const PriceText(
                        price: '35.5',
                        isLarge: true,
                      ),
                      const SizedBox(width: 6),
                      Container(
                        decoration: const BoxDecoration(
                          color: MyColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: const SizedBox(
                          height: 22 * 1.2,
                          width: 22 * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add_outline,
                              color: MyColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

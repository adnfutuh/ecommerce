import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/common/widgets/text/brand_title_with_verifed_icon.dart';
import 'package:ecommerce/common/widgets/text/price_text.dart';
import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:ecommerce/features/shop/screens/product_detail/product_detail.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: dark ? MyColors.darkerGrey : MyColors.softGrey,
        ),
        child: Row(
          children: [
            RoundedContainer(
              height: 130,
              padding: const EdgeInsets.all(8),
              bgColor: dark ? MyColors.dark : MyColors.white,
              child: Stack(
                children: [
                  SizedBox(
                    height: 130,
                    width: 130,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(Assets.images.products.nikeShoes.path),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
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
                  ),
                  const Positioned(
                      top: -1,
                      right: -12,
                      child: CircularIcon(
                        size: 24,
                        icon: Iconsax.heart_bold,
                        color: Colors.red,
                        changeColor: true,
                      ))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTitleText(
                          title: 'Green Nike Air Shoess ',
                        ),
                        SizedBox(height: 8),
                        BrandTitleWithFerivedIcon(title: 'Nike'),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: PriceText(
                            price: '35.5',
                            isLarge: true,
                          ),
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
                            height: 26 * 1.2,
                            width: 26 * 1.2,
                            child: Center(
                              child: Icon(
                                Iconsax.add_outline,
                                color: MyColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

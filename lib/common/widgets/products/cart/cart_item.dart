import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/brand_title_with_verifed_icon.dart';
import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      bgColor: dark ? Colors.black : MyColors.white,
      child: Column(
        children: [
          Row(
            children: [
              RoundedContainer(
                height: 60,
                width: 60,
                bgColor: dark ? MyColors.darkerGrey : MyColors.light,
                child: Image(
                    image: AssetImage(
                        Assets.images.products.nikeAirJOrdonBlackRed.path)),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const BrandTitleWithFerivedIcon(title: 'Nike'),
                    const SizedBox(height: 8),
                    const ProductTitleText(
                      title: 'Green Nike Air Shoes',
                      maxLines: 1,
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "color ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: "Green ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "Size ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: "UK 08",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ]))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

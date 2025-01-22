import 'package:ecommerce/common/widgets/brands/brand_showcase.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/card/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/features/shop/models/category_model.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class StoreCategoryTab extends StatelessWidget {
  final CategoryModel category;
  const StoreCategoryTab({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              BrandShowcase(
                images: [
                  Assets.images.products.nikeShoes.path,
                  Assets.images.products.nikeAirJOrdonBlackRed.path,
                  Assets.images.products.nikeBasketballShoeGreenBlack.path,
                ],
              ),
              const SizedBox(height: 16),
              BrandShowcase(
                images: [
                  Assets.images.products.nikeShoes.path,
                  Assets.images.products.nikeAirJOrdonBlackRed.path,
                  Assets.images.products.nikeBasketballShoeGreenBlack.path,
                ],
              ),
              const SectionHeadling(title: 'You might like'),
              const SizedBox(height: 16),
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

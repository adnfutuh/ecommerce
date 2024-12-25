import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/products/card/product_card_horizontal.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppbar(
        title: Text(
          "Sports",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage(Assets.images.banners.banner3.path),
                ),
              ),
              const SectionHeadling(title: "Sports Shirts"),
              const SizedBox(height: 8),
              SizedBox(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const ProductCardHorizontal(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  itemCount: 4,
                ),
              ),
              const SizedBox(height: 32),
              const SectionHeadling(title: "Track Suits"),
              const SizedBox(height: 8),
              SizedBox(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const ProductCardHorizontal(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  itemCount: 4,
                ),
              ),
              const SizedBox(height: 32),
              const SectionHeadling(title: "Sports Equipments"),
              const SizedBox(height: 8),
              SizedBox(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const ProductCardHorizontal(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

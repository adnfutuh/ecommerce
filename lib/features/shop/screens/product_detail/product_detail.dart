import 'package:ecommerce/common/widgets/bottom/bottom_add_cart.dart';
import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/features/shop/screens/product_detail/widgets/product_attribute.dart';
import 'package:ecommerce/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_detail/widgets/product_rating_share.dart';
import 'package:ecommerce/features/shop/screens/product_rating_review/product_rating_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:readmore/readmore.dart';

import 'widgets/product_image_slider.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: Column(
                children: [
                  const ProductRatingShare(),
                  const ProductMetaData(),
                  const ProductAttribute(),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Checkout"),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const SectionHeadling(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(height: 16),
                  const ReadMoreText(
                    "This is a Product Description Nike Sleeve lest vess. There are more things that can be added but i am just practicing and nothing else. ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeadling(
                          title: "Reviews(199)", showActionButton: false),
                      CircularIcon(
                        icon: Iconsax.arrow_right_3_outline,
                        size: 24,
                        onPressed: () =>
                            Get.to(() => const ProductRatingReviewScreen()),
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

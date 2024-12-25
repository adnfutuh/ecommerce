import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/card/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.find<NavigationController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppbar(),
                  SearchContainer(
                    text: 'Search in Store',
                    onTap: () => controller.navigateToScreen(1),
                  ),
                  const HomeCategories(),
                  const SizedBox(height: 64)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const HomePromo(),
                  SectionHeadling(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (context, index) =>
                        const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/appbar/r_tab_bar.dart';
import 'package:ecommerce/common/widgets/brands/barnd_card.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/features/shop/screens/brands/all_brands_screen.dart';
import 'package:ecommerce/features/shop/screens/brands/brand_products.dart';
import 'package:ecommerce/features/shop/screens/cart/cart_screen.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/store_categories.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: RAppbar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            CartCounterIcon(
              iconColor: dark ? MyColors.white : MyColors.black,
              onPressed: () => Get.to(() => const CartScreen()),
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 350,
                backgroundColor: MyHelperFunctions.isDarkMode(context)
                    ? Colors.black
                    : MyColors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(24),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: 8),
                      const SearchContainer(
                        text: 'Seacrh in Store',
                        showBorder: true,
                        showBg: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: 16),
                      SectionHeadling(
                        title: 'Popular Brands',
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                      ),
                      GridLayout(
                        mainAxisExtent: 60,
                        itemCount: 4,
                        itemBuilder: (_, index) => BarndCard(
                          onTap: () => Get.to(() => const BrandProducts()),
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: const RTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furnitures')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(children: [
            StoreCategoryTab(),
            StoreCategoryTab(),
            StoreCategoryTab(),
            StoreCategoryTab(),
            StoreCategoryTab(),
          ]),
        ),
      ),
    );
  }
}

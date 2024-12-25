import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/card/product_card_vertical.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.find<NavigationController>();
    return Scaffold(
      appBar: RAppbar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CircularIcon(
            icon: Iconsax.add_outline,
            onPressed: () => controller.navigateToScreen(0),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: GridLayout(
            itemCount: 6,
            itemBuilder: (_, index) => const ProductCardVertical(),
          ),
        ),
      ),
    );
  }
}

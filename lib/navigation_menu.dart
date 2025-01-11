import 'package:ecommerce/features/personalization/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import 'features/shop/screens/screens.dart';
import 'utils/utils.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = MyHelperFunctions.isDarkMode(context);

    return Obx(
      () => Scaffold(
        bottomNavigationBar: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) {
            controller.selectedIndex.value = value;
          },
          backgroundColor: dark ? MyColors.black : MyColors.white,
          indicatorColor: dark
              ? MyColors.white.withValues(alpha: 0.1)
              : MyColors.black.withValues(alpha: 0.1),
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.home_outline), label: "Home"),
            NavigationDestination(
                icon: Icon(Iconsax.shop_outline), label: "Store"),
            NavigationDestination(
                icon: Icon(Iconsax.heart_outline), label: "Wishlist"),
            NavigationDestination(
                icon: Icon(Iconsax.user_outline), label: "Profile"),
          ],
        ),
        body: controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = const [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    SettingScreen(),
  ];

  void navigateToScreen(int index) => selectedIndex.value = index;
}

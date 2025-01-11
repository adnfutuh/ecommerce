import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/cart/coupon_code.dart';
import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/widgets.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppbar(title: Text("Order Review"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CartItems(showAddRemoveButton: false),
              const SizedBox(height: 32),
              const CouponCode(),
              const SizedBox(height: 32),
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(16),
                bgColor: MyHelperFunctions.isDarkMode(context)
                    ? MyColors.black
                    : MyColors.white,
                child: const Column(
                  children: [
                    BillingAmount(),
                    SizedBox(height: 16),
                    Divider(),
                    SizedBox(height: 16),
                    BillingPayment(),
                    SizedBox(height: 16),
                    BillingAddress(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
                image: Assets.images.animations.a72462CheckRegister,
                title: "Payment Success",
                subTitle: "Your item will be shipped soon!",
                onPressed: () => Get.to(() => const NavigationMenu()),
              )),
          child: const Text("Chekout \$35.5"),
        ),
      ),
    );
  }
}

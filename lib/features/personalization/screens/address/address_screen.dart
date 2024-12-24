import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/features/personalization/screens/address/new_address_Screen.dart';
import 'package:ecommerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppbar(title: Text("Address"), showBackArrow: true),
      floatingActionButton: FloatingActionButton(
          backgroundColor: MyColors.primary,
          child: const Icon(Iconsax.add_outline, color: MyColors.white),
          onPressed: () => Get.to(() => const NewAddressScreen())),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SingleAddress(selectedAdrress: true),
              SingleAddress(),
              SingleAddress(),
              SingleAddress(),
              SingleAddress(),
              SingleAddress(),
              SingleAddress(),
            ],
          ),
        ),
      ),
    );
  }
}

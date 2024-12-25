import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/brands/barnd_card.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/features/shop/screens/brands/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppbar(title: Text("Brand"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SectionHeadling(title: "Brands", showActionButton: false),
              const SizedBox(height: 16),
              GridLayout(
                mainAxisExtent: 60,
                itemCount: 10,
                itemBuilder: (_, index) => BarndCard(
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

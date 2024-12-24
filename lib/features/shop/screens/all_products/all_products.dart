import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/card/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> option = [
      "Name",
      "Higher Price",
      "Lower Price",
      "Sale",
      "Newest",
      "Popularity",
    ];
    return Scaffold(
      appBar:
          const RAppbar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.sort_outline),
                ),
                items: option
                    .map((option) =>
                        DropdownMenuItem(value: option, child: Text(option)))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 32),
              GridLayout(
                itemCount: 11,
                itemBuilder: (context, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

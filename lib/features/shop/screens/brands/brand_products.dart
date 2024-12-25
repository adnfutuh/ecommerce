import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/brands/barnd_card.dart';
import 'package:ecommerce/common/widgets/sortable/sortable_products.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: RAppbar(title: Text("Nike"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              BarndCard(),
              SizedBox(height: 32),
              SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

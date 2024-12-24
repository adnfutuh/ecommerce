import 'package:ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/common/widgets/text/price_text.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  final bool showAddRemoveButton;
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: showAddRemoveButton
          ? const AlwaysScrollableScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      itemCount: 2,
      separatorBuilder: (context, index) => const SizedBox(height: 32),
      itemBuilder: (context, index) => Column(
        children: [
          const CartItem(),
          if (showAddRemoveButton) const SizedBox(height: 16),
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    ProductQuantityWIthAddRemoveButton(),
                  ],
                ),
                PriceText(price: '35.5'),
              ],
            ),
        ],
      ),
    );
  }
}

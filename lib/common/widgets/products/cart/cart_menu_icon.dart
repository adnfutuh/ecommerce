import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CartCounterIcon extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color iconColor;

  const CartCounterIcon({
    super.key,
    this.onPressed,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag_outline,
            color: iconColor,
          ),
        ),
        Positioned(
            right: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: MyColors.black,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: MyColors.white),
                ),
              ),
            ))
      ],
    );
  }
}

import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomAddCart extends StatelessWidget {
  const BottomAddCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: const EdgeInsets.all(12),
      radius: 16,
      radiusAllCircular: false,
      bgColor: MyHelperFunctions.isDarkMode(context)
          ? MyColors.darkerGrey
          : MyColors.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircularIcon(
                height: 40,
                width: 40,
                icon: Iconsax.minus_outline,
                bgColor: MyColors.darkGrey,
                changeColor: true,
                color: MyColors.white,
                showBgColor: true,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(width: 8),
              const CircularIcon(
                height: 40,
                width: 40,
                icon: Iconsax.add_outline,
                changeColor: true,
                color: MyColors.white,
                bgColor: MyColors.black,
                showBgColor: true,
                size: 24,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: MyColors.black,
                  side: const BorderSide(
                    color: MyColors.black,
                  )),
              child: const Text("Add to Cart"))
        ],
      ),
    );
  }
}

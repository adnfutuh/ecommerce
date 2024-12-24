import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProductQuantityWIthAddRemoveButton extends StatelessWidget {
  const ProductQuantityWIthAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        CircularIcon(
          height: 32,
          width: 32,
          showBgColor: true,
          changeColor: true,
          color: dark ? MyColors.white : MyColors.black,
          bgColor: dark ? MyColors.darkerGrey : MyColors.light,
          icon: Iconsax.minus_outline,
          size: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text("2", style: Theme.of(context).textTheme.titleMedium),
        ),
        const CircularIcon(
          height: 32,
          width: 32,
          showBgColor: true,
          changeColor: true,
          color: MyColors.white,
          bgColor: MyColors.primary,
          icon: Iconsax.add_outline,
          size: 16,
        ),
      ],
    );
  }
}

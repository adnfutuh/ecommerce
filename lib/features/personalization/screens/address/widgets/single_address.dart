import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SingleAddress extends StatelessWidget {
  final bool selectedAdrress;
  const SingleAddress({super.key, this.selectedAdrress = false});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      width: double.infinity,
      bgColor: selectedAdrress
          ? dark
              ? MyColors.primary
              : MyColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: selectedAdrress
          ? Colors.transparent
          : dark
              ? MyColors.darkerGrey
              : MyColors.grey,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAdrress ? Iconsax.tick_circle_outline : null,
              color: dark ? MyColors.light : MyColors.dark,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jhon Doe",
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),
              const Text(
                "(+123) 456 789",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),
              const Text(
                "823667 Timmy Coves, South Liana, Maine, 87665, USA",
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

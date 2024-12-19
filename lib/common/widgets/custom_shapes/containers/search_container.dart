import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../utils/utils.dart';

class SearchContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool showBg, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal_outline,
    this.showBg = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          padding: const EdgeInsets.all(16),
          width: MyDeviceUtils.getScreenWidth(context),
          decoration: BoxDecoration(
            color: showBg
                ? dark
                    ? MyColors.dark
                    : MyColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: showBorder
                ? Border.all(color: dark ? MyColors.darkerGrey : MyColors.grey)
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: MyColors.darkGrey,
              ),
              const SizedBox(width: 16),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

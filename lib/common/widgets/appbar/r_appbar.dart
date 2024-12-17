import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class RAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackArrow;
  final IconData? leadingIcon;
  final Widget? title;
  final List<Widget>? actions;
  final VoidCallback? onPressed;
  const RAppbar({
    super.key,
    this.showBackArrow = false,
    this.leadingIcon,
    this.title,
    this.actions,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Iconsax.arrow_left_outline))
          : leadingIcon != null
              ? IconButton(onPressed: onPressed, icon: Icon(leadingIcon))
              : null,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppbarHeight());
}

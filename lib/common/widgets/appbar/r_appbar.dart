import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackArrow;
  final IconData? leadingIcon;
  final Widget? title;
  final List<Widget>? actions;
  final VoidCallback? onPressed;
  final bool changeColor;
  final Color? color;
  const RAppbar(
      {super.key,
      this.showBackArrow = false,
      this.leadingIcon,
      this.title,
      this.actions,
      this.onPressed,
      this.changeColor = false,
      this.color = MyColors.white});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios),
                color: changeColor
                    ? color
                    : dark
                        ? MyColors.white
                        : MyColors.black,
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: onPressed,
                    icon: Icon(leadingIcon),
                    color: changeColor
                        ? color
                        : dark
                            ? MyColors.white
                            : MyColors.black,
                  )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppbarHeight());
}

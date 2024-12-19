import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class RTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const RTabBar({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? Colors.black : MyColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: MyColors.primary,
        unselectedLabelColor: MyColors.darkGrey,
        labelColor: dark ? MyColors.white : MyColors.primary,
        tabAlignment: TabAlignment.start,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppbarHeight());
}

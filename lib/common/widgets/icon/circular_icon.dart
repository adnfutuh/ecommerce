import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final double width, height;
  final double size;
  final EdgeInsetsGeometry? padding;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool changeColor;
  final Color color;
  final Color? bgColor;
  final bool showBgColor;
  const CircularIcon({
    super.key,
    this.width = 50,
    this.height = 50,
    this.padding,
    this.onPressed,
    required this.icon,
    this.color = MyColors.white,
    this.changeColor = false,
    this.size = 32,
    this.showBgColor = false,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: showBgColor
              ? bgColor != null
                  ? bgColor!
                  : dark
                      ? MyColors.black.withValues(alpha: 0.9)
                      : MyColors.white.withValues(alpha: 0.9)
              : null),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          size: size,
          icon,
          color: changeColor
              ? color
              : dark
                  ? MyColors.white
                  : MyColors.black,
        ),
      ),
    );
  }
}

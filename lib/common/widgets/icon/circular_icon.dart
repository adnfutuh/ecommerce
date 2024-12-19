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
  const CircularIcon({
    super.key,
    this.width = 50,
    this.height = 50,
    this.padding,
    this.onPressed,
    required this.icon,
    this.color = MyColors.white,
    this.changeColor = true,
    this.size = 32,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: padding,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          size: size,
          icon,
          color: changeColor
              ? dark
                  ? MyColors.white
                  : MyColors.black
              : color,
        ),
      ),
    );
  }
}

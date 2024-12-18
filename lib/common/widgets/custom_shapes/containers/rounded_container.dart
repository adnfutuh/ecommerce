import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';

class RoundedContainer extends StatelessWidget {
  final double? width, height;
  final double radius;
  final Color bgColor;
  final Color borderColor;
  final bool showBorder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 16,
    this.bgColor = MyColors.textWhite,
    this.child,
    this.borderColor = MyColors.borderPrimary,
    this.showBorder = false,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}

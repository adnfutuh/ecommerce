import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';

class CircularContainer extends StatelessWidget {
  final double width, height, radius;
  final Color bgColor;
  final Widget? child;
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.bgColor = MyColors.textWhite,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}

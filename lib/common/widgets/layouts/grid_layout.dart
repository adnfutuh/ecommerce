import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  const GridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 2,
      ),
      itemBuilder: itemBuilder,
    );
  }
}

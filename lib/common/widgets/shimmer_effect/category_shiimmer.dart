import 'package:ecommerce/common/widgets/shimmer_effect/shimmer_effect.dart';
import 'package:flutter/material.dart';

class CategoryShiimmer extends StatelessWidget {
  final int itemCount;
  const CategoryShiimmer({super.key, this.itemCount = 6});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: itemCount,
        itemBuilder: (_, __) => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerEffect(width: 55, height: 55, radius: 55),
            SizedBox(height: 8),
            ShimmerEffect(width: 55, height: 8),
          ],
        ),
      ),
    );
  }
}

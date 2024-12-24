import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RRatingBarIndicator extends StatelessWidget {
  final double rating;
  const RRatingBarIndicator({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: MyColors.grey,
      itemBuilder: (_, index) => const Icon(
        Icons.star,
        color: MyColors.primary,
      ),
    );
  }
}

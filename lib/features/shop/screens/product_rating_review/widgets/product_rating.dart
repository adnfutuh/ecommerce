import 'package:ecommerce/common/widgets/ratings/linear_progres_indicator.dart';
import 'package:ecommerce/common/widgets/ratings/rating_bar_indicator.dart';
import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "3.8",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const RRatingBarIndicator(rating: 3.5),
              const ProductTitleText(title: "21.496", smallSize: true),
            ],
          ),
        ),
        const Expanded(
          flex: 6,
          child: Column(
            children: [
              RliniearProgrressIndicator(title: '5', value: 1),
              RliniearProgrressIndicator(title: '4', value: 0.8),
              RliniearProgrressIndicator(title: '3', value: 0.6),
              RliniearProgrressIndicator(title: '2', value: 0.4),
              RliniearProgrressIndicator(title: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}

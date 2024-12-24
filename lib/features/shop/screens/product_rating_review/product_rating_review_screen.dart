import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:ecommerce/features/shop/screens/product_rating_review/widgets/product_reviews.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/constants/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/product_rating.dart';

class ProductRatingReviewScreen extends StatelessWidget {
  const ProductRatingReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const RAppbar(title: Text("Rating & Reviews"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductTitleText(
                title:
                    "Ratings and reviews are verified and come from people who use the same type of device as you.",
                smallSize: true,
              ),
              const SizedBox(height: 32),
              const OverallProductRating(),
              const SizedBox(height: 32),
              ProductReviews(
                image: Assets.images.reviews.reviewProfileImage2.path,
                userName: 'Jhon Doe',
                date: "05/12/24",
                comment: MyText.description,
              ),
              ProductReviews(
                image: Assets.images.reviews.reviewProfileImage3.path,
                userName: 'Thomas',
                date: "01/12/24",
                comment: MyText.description,
              ),
              ProductReviews(
                image: Assets.images.reviews.reviewProfileImage1.path,
                userName: 'Alia',
                date: "28/11/24",
                comment: MyText.description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

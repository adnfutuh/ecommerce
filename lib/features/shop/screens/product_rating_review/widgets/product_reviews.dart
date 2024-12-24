import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/ratings/rating_bar_indicator.dart';
import 'package:ecommerce/common/widgets/text/brand_text.dart';
import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:ecommerce/utils/constants/constants.dart';
import 'package:ecommerce/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductReviews extends StatelessWidget {
  final String image;
  final String userName;
  final String date;
  final String comment;
  const ProductReviews(
      {super.key,
      required this.image,
      required this.userName,
      required this.date,
      required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage(image)),
                  const SizedBox(width: 16),
                  BrandText(title: userName, brandTextSize: TextSizes.large),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const RRatingBarIndicator(rating: 5),
              const SizedBox(width: 16),
              ProductTitleText(title: date, smallSize: true),
            ],
          ),
          const SizedBox(height: 24),
          ReadMoreText(
            comment,
            trimLines: 2,
            trimMode: TrimMode.Line,
            moreStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            lessStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          RoundedContainer(
            padding: const EdgeInsets.all(16),
            radius: 3,
            bgColor: MyHelperFunctions.isDarkMode(context)
                ? MyColors.darkerGrey
                : MyColors.softGrey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Adnan Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    ProductTitleText(title: date, smallSize: true),
                  ],
                ),
                const SizedBox(height: 16),
                ReadMoreText(
                  comment,
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primary),
                  lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primary),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/price_text.dart';
import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundedContainer(
          bgColor: dark ? MyColors.darkerGrey : MyColors.grey,
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const SectionHeadling(
                  title: "Variation", showActionButton: false),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const ProductTitleText(title: 'Price : '),
                      const PriceText(price: "250", lineThrough: true),
                      const SizedBox(width: 16),
                      Text(
                        "\$175",
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const ProductTitleText(title: 'Stock : '),
                      Text(
                        "In Stock",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        const SectionHeadling(title: "Colors", showActionButton: false),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            RChoiceChip(
              text: 'green',
              selected: true,
              onSelected: (value) {},
            ),
            RChoiceChip(
              text: 'black',
              selected: false,
              onSelected: (value) {},
            ),
            RChoiceChip(
              text: 'red',
              selected: false,
              onSelected: (value) {},
            ),
          ],
        ),
        const SizedBox(height: 16),
        const SectionHeadling(title: "Size", showActionButton: false),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          alignment: WrapAlignment.start,
          children: [
            RChoiceChip(
              text: 'EU 34',
              selected: true,
              onSelected: (value) {},
            ),
            RChoiceChip(
              text: 'EU 36',
              selected: false,
              onSelected: (value) {},
            ),
            RChoiceChip(
              text: 'EU 38',
              selected: false,
              onSelected: (value) {},
            ),
          ],
        )
      ],
    );
  }
}

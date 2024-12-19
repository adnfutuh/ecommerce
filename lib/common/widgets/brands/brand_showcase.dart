import 'package:ecommerce/common/widgets/brands/barnd_card.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  final List<String> images;
  const BrandShowcase({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(8),
      bgColor: dark ? Colors.black : MyColors.white,
      borderColor: MyColors.grey,
      showBorder: true,
      child: Column(
        children: [
          const BarndCard(showBorder: false),
          Row(
            children: images
                .map(
                    (image) => brandTopPodutctImageWidget(image, context, dark))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopPodutctImageWidget(
      String image, BuildContext context, bool dark) {
    return Expanded(
      child: RoundedContainer(
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.only(right: 6),
        height: 95,
        bgColor: dark ? MyColors.darkGrey : MyColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}

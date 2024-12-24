import 'package:ecommerce/features/shop/screens/sub_categories/sub_categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../common/widgets/text/section_headling.dart';
import '../../../../../generated/assets.gen.dart';
import '../../../../../utils/utils.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        children: [
          const SectionHeadling(
            title: 'Popular Categories',
            showActionButton: false,
            textColor: MyColors.textWhite,
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (_, index) {
                return VerticalImageText(
                  image: Assets.icons.categories.icons8Shoes64.path,
                  title: 'Shoes',
                  onTap: () => Get.to(() => const SubCategoriesScreen()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

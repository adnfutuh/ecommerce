import 'package:ecommerce/common/widgets/shimmer_effect/category_shiimmer.dart';
import 'package:ecommerce/features/shop/controllers/category_controller.dart';
import 'package:ecommerce/features/shop/screens/sub_categories/sub_categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../common/widgets/text/section_headling.dart';
import '../../../../../utils/utils.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
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
          Obx(() {
            if (controller.isLoading.value) return const CategoryShiimmer();

            if (controller.featuredCategories.isEmpty) {
              return Center(
                  child: Text(
                "No Data Found!",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: MyColors.white),
              ));
            }
            return SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.featuredCategories.length,
                itemBuilder: (_, index) {
                  final category = controller.featuredCategories[index];
                  return VerticalImageText(
                    image: category.image,
                    title: category.name,
                    onTap: () => Get.to(() => const SubCategoriesScreen()),
                  );
                },
              ),
            );
          })
        ],
      ),
    );
  }
}

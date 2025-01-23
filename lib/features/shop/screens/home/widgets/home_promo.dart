import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:ecommerce/common/widgets/shimmer_effect/shimmer_effect.dart';
import 'package:ecommerce/features/shop/controllers/banner_controller.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePromo extends StatelessWidget {
  const HomePromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Obx(() {
      if (controller.isLoading.value) {
        return const ShimmerEffect(width: double.infinity, height: 178);
      }
      if (controller.banners.isEmpty) {
        return Center(
            child: Text(
          "No Data Found!",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: MyColors.white),
        ));
      }

      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            height: 178,
            child: AnotherCarousel(
                animationDuration: const Duration(seconds: 1),
                dotSize: 6,
                indicatorBgPadding: 5,
                dotSpacing: 15,
                dotBgColor: Colors.transparent,
                dotIncreasedColor: MyColors.primary,
                images: controller.banners
                    .map((banner) => GestureDetector(
                        onTap: () => Get.toNamed(banner.targetScreen),
                        child: Image(
                          image: NetworkImage(banner.imageUrl),
                          fit: BoxFit.contain,
                        )))
                    .toList()),
          ),
        ),
      );
    });
  }
}

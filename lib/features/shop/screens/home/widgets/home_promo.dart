import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePromo extends StatelessWidget {
  const HomePromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              dotBgColor: Colors.transparent,
              dotIncreasedColor: MyColors.primary,
              images: [
                Image(
                  fit: BoxFit.contain,
                  image: AssetImage(Assets.images.banners.banner1.path),
                ),
                Image(
                  fit: BoxFit.contain,
                  image: AssetImage(Assets.images.banners.banner2.path),
                ),
                Image(
                  fit: BoxFit.contain,
                  image: AssetImage(Assets.images.banners.banner3.path),
                ),
                Image(
                  fit: BoxFit.contain,
                  image: AssetImage(Assets.images.banners.banner4.path),
                ),
                Image(
                  fit: BoxFit.contain,
                  image: AssetImage(Assets.images.banners.banner5.path),
                ),
                Image(
                  fit: BoxFit.contain,
                  image: AssetImage(Assets.images.banners.banner6.path),
                ),
              ]),
        ),
      ),
    );
  }
}

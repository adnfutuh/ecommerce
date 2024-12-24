import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        decoration: BoxDecoration(
            color: dark ? MyColors.darkerGrey : MyColors.darkGrey),
        child: Stack(
          children: [
            Container(
              height: 400,
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage(Assets.images.products.nikeShoes.path),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 16,
              right: 0,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => RoundedContainer(
                    width: 80,
                    padding: const EdgeInsets.all(8),
                    bgColor: dark ? MyColors.black : MyColors.light,
                    showBorder: true,
                    borderColor: MyColors.primary,
                    child: Image(
                      image: AssetImage(
                          Assets.images.products.nikeAirJOrdonBlackRed.path),
                    ),
                  ),
                ),
              ),
            ),
            const RAppbar(
              changeColor: true,
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart_bold,
                  color: Colors.red,
                  changeColor: true,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

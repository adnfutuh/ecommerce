import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/utils.dart';
import 'widgets/widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              Onboarding(
                image: Assets.images.onBoardingImages.sammyLineSearching.path,
                title: MyText.onBoardingTitle1,
                subTitle: MyText.onBoardingSubTitle1,
              ),
              Onboarding(
                image: Assets.images.onBoardingImages.sammyLineShopping.path,
                title: MyText.onBoardingTitle2,
                subTitle: MyText.onBoardingSubTitle2,
              ),
              Onboarding(
                image: Assets.images.onBoardingImages.sammyLineDelivery.path,
                title: MyText.onBoardingTitle3,
                subTitle: MyText.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingDotNavigation(),
          const OnboardingCircular(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../utils/utils.dart';
import '../../../controllers/onboarding_controller.dart';

class OnboardingCircular extends StatelessWidget {
  const OnboardingCircular({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
      right: 24,
      bottom: MyDeviceUtils.getBottomStatusBarHeight(),
      child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? MyColors.primary : MyColors.dark,
            side: BorderSide(
              color: dark ? MyColors.primary : MyColors.dark,
            ),
          ),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: MyColors.white,
            size: 24,
          )),
    );
  }
}

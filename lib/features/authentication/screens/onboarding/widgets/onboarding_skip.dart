import 'package:flutter/material.dart';

import '../../../../../utils/utils.dart';
import '../../../controllers/onboarding_controller.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MyDeviceUtils.getAppbarHeight(),
      right: 24,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text(
            'Skip',
            style: TextStyle(fontSize: 14),
          )),
    );
  }
}

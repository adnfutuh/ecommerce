import 'package:ecommerce/features/authentication/controllers/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../generated/assets.gen.dart';
import '../../../utils/utils.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () => controller.loginWithGoogle(),
              icon: Image(
                height: 32,
                width: 32,
                image: AssetImage(Assets.logos.googleIcon.path),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image(
                height: 32,
                width: 32,
                image: AssetImage(Assets.logos.facebookIcon.path),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

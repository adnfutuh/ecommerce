import 'package:ecommerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/utils.dart';

class CheckboxTermsConditions extends StatelessWidget {
  const CheckboxTermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Obx(
          () => Checkbox(
            value: controller.hidePrivacyPolicy.value,
            onChanged: (value) => controller.hidePrivacyPolicy.value =
                !controller.hidePrivacyPolicy.value,
          ),
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${MyText.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: '${MyText.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? MyColors.white : MyColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? MyColors.white : MyColors.primary,
                      ),
                ),
                TextSpan(
                  text: '${MyText.and} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: '${MyText.termsOfUse} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? MyColors.white : MyColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? MyColors.white : MyColors.primary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

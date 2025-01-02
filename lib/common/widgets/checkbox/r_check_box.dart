import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/authentication/controllers/signup/signup_controller.dart';

class RCheckBox extends StatelessWidget {
  const RCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Obx(
      () => Checkbox(
        value: controller.hidePrivacyPolicy.value,
        onChanged: (value) => controller.hidePrivacyPolicy.value =
            !controller.hidePrivacyPolicy.value,
      ),
    );
  }
}

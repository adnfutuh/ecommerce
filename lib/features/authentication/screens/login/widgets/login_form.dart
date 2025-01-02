import 'package:ecommerce/common/widgets/checkbox/r_check_box.dart';
import 'package:ecommerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup_screen.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../common/widgets/login_signup/login_signup.dart';
import '../../../../../utils/utils.dart';
import '../../../controllers/signup/signup_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Form(
          child: Column(
        children: [
          const TextForm(
            icon1: Iconsax.direct_right_outline,
            text: MyText.email,
          ),
          Obx(
            () => TextForm(
              obscureText: controller.hidePassword.value,
              icon1: Iconsax.password_check_outline,
              text: MyText.pass,
              onPressed: () => controller.hidePassword.value =
                  !controller.hidePassword.value,
              icon2: Icon(controller.hidePassword.value
                  ? Iconsax.eye_slash_outline
                  : Iconsax.eye_outline),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [RCheckBox(), Text(MyText.rememberMe)],
              ),
              TextButton(
                onPressed: () => Get.to(() => const ForgetPassword()),
                child: const Text(MyText.forgetPass),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.offAll(() => const NavigationMenu()),
              child: const Text(MyText.signIn),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              child: const Text(MyText.createAccount),
            ),
          ),
        ],
      )),
    );
  }
}

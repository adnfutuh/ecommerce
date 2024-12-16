import 'package:ecommerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup_screen.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../common/widgets/login_signup/login_signup.dart';
import '../../../../../utils/utils.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Form(
          child: Column(
        children: [
          const TextForm(
            icon1: Iconsax.direct_right_outline,
            text: MyText.email,
          ),
          const TextForm(
            icon1: Iconsax.password_check_outline,
            text: MyText.pass,
            icon2: Iconsax.eye_slash_outline,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(MyText.rememberMe)
                ],
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
              onPressed: () => Get.to(() => const NavigationMenu()),
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

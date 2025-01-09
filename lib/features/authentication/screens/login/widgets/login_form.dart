import 'package:ecommerce/features/authentication/controllers/login/login_controller.dart';
import 'package:ecommerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup_screen.dart';
import 'package:ecommerce/utils/validator/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../common/widgets/login_signup/login_signup.dart';
import '../../../../../utils/utils.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Form(
          key: controller.loginFormKey,
          child: Column(
            children: [
              TextForm(
                controller: controller.email,
                validator: (value) => MyValidatior.validateEmail(value),
                icon1: Iconsax.direct_right_outline,
                text: MyText.email,
              ),
              Obx(
                () => TextForm(
                  controller: controller.password,
                  validator: (value) => MyValidatior.validatePassword(value),
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
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value,
                        ),
                      ),
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
                  onPressed: () => controller.login(),
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

import 'package:ecommerce/common/widgets/login_signup/text_form.dart';
import 'package:ecommerce/features/personalization/controllers/user_controller.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:ecommerce/utils/validator/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(title: const Text("Re-Authenticate User")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: controller.reAuthFormKey,
            child: Column(
              children: [
                TextForm(
                  controller: controller.verifyEmail,
                  validator: (value) => MyValidatior.validateEmail(value),
                  icon1: Iconsax.direct_right_outline,
                  text: MyText.email,
                ),
                Obx(
                  () => TextForm(
                    controller: controller.verifyPassword,
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
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>
                        controller.reAuthenticateEmailAndPasswordUser(),
                    child: const Text("Verify"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

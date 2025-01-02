import 'package:ecommerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:ecommerce/utils/validator/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../common/widgets/login_signup/text_form.dart';
import '../../../../../utils/utils.dart';
import 'widgets.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        MyValidatior.validateEmptyText("First Name", value),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user_outline),
                      labelText: MyText.firstName,
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                Expanded(
                  child: TextFormField(
                    controller: controller.lastName,
                    validator: (value) =>
                        MyValidatior.validateEmptyText("Last Name", value),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user_outline),
                      labelText: MyText.lastName,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextForm(
              controller: controller.userName,
              validator: (value) =>
                  MyValidatior.validateEmptyText("User Name", value),
              icon1: Iconsax.user_edit_outline,
              text: MyText.username,
            ),
            TextForm(
              controller: controller.email,
              validator: (value) => MyValidatior.validateEmail(value),
              icon1: Iconsax.direct_outline,
              text: MyText.email,
            ),
            TextForm(
              controller: controller.phoneNumber,
              validator: (value) => MyValidatior.validatePhoneNUmber(value),
              icon1: Iconsax.call_outline,
              text: MyText.phoneNum,
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
            const CheckboxTermsConditions(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.signup(),
                  child: const Text(MyText.createAccount),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

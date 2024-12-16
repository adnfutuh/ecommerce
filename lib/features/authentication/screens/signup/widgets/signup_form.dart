import 'package:ecommerce/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../common/widgets/login_signup/text_form.dart';
import '../../../../../utils/utils.dart';
import 'widgets.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user_outline),
                      labelText: MyText.firstName,
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user_outline),
                      labelText: MyText.lastName,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const TextForm(
              icon1: Iconsax.user_add_outline,
              text: MyText.username,
            ),
            const TextForm(
              icon1: Iconsax.direct_outline,
              text: MyText.email,
            ),
            const TextForm(
              icon1: Iconsax.call_outline,
              text: MyText.phoneNum,
            ),
            const TextForm(
              icon1: Iconsax.password_check_outline,
              text: MyText.pass,
              icon2: Iconsax.eye_slash_outline,
            ),
            const CheckboxTermsConditions(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()),
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

import 'package:ecommerce/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:ecommerce/utils/validator/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../common/widgets/login_signup/login_signup.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyText.forgetPassTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              Text(
                MyText.forgetPassSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 64),
              Form(
                key: controller.forgetPasswordFormKey,
                child: TextForm(
                  controller: controller.email,
                  validator: (value) => MyValidatior.validateEmail(value),
                  icon1: Iconsax.direct_right_outline,
                  text: MyText.email,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.sendPasswordResetEmail(),
                  child: const Text(MyText.submit),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

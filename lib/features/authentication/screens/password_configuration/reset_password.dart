import 'package:ecommerce/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:ecommerce/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  final String email;
  const ResetPassword({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 112, 24, 24),
          child: Column(
            children: [
              Image(
                width: MyHelperFunctions.screenWidth() * 0.6,
                image: AssetImage(
                    Assets.images.animations.sammyLineManReceivesAMail.path),
              ),
              const SizedBox(height: 32),
              Text(
                MyText.changeYourPassTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                email,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                MyText.changeYourPassSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  child: const Text(MyText.done),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => ForgetPasswordController.instance
                      .resendPasswordResetEmail(email),
                  child: const Text(MyText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

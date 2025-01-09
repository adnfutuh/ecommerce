import 'package:ecommerce/data/repositories/authentication/auth_repository.dart';
import 'package:ecommerce/data/repositories/user/user_repository.dart';
import 'package:ecommerce/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/helpers/network_manager.dart';
import 'package:ecommerce/utils/popups/full_screen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../personalization/models/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final hidePrivacyPolicy = false.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      /// Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      /// Form Validation
      if (!signupFormKey.currentState!.validate()) return;

      /// Privacy Policy Check
      if (hidePrivacyPolicy.value == false) {
        MyLoaders.warningSnackBar(
          title: "Accept Privacy Policy",
          message:
              "In order to create account, you must have to read and accept the Privacy Policy & Terms of Use",
        );
        return;
      }

      /// Star Loading
      MyFullScreenLoader.openLoadingDialog(
        "We are processing your information",
        Assets.images.animations.a141594AnimationOfDocer,
      );

      /// Delay to simulate animation duration (adjust the duration as needed)
      await Future.delayed(const Duration(seconds: 3));

      final userCredential = await AuthRepository.instance
          .registerWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim());

      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: "",
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      MyFullScreenLoader.stopLoading();

      MyLoaders.successSnackBar(
        title: "Congratulations",
        message: "Your account has been created! Verify email to continue.",
      );
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }
}

import 'dart:async';

import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/data/repositories/authentication/auth_repository.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthRepository.instance.sendEmailVerification();
      MyLoaders.successSnackBar(
        title: "Email Sent",
        message: "Please check your inbox and verify your email.",
      );
    } catch (e) {
      MyLoaders.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }

  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.to(
          () => SuccessScreen(
            image: Assets.images.animations.a72462CheckRegister,
            title: MyText.yourAccountCreatedTitle,
            subTitle: MyText.yourAccountCreatedSubTitle,
            onPressed: () => AuthRepository.instance.screenRedirect(),
          ),
        );
      }
    });
  }

  checkEmailVerificationStatus() {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.to(
        () => SuccessScreen(
          image: Assets.images.animations.a72462CheckRegister,
          title: MyText.yourAccountCreatedTitle,
          subTitle: MyText.yourAccountCreatedSubTitle,
          onPressed: () => AuthRepository.instance.screenRedirect(),
        ),
      );
    }
  }
}

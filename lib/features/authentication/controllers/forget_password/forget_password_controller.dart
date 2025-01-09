import 'package:ecommerce/data/repositories/authentication/auth_repository.dart';
import 'package:ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/helpers/network_manager.dart';
import 'package:ecommerce/utils/popups/full_screen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  Future<void> sendPasswordResetEmail() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      if (!forgetPasswordFormKey.currentState!.validate()) return;

      MyFullScreenLoader.openLoadingDialog(
        "Proccesing your request ...",
        Assets.images.animations.a141594AnimationOfDocer,
      );

      await Future.delayed(const Duration(seconds: 3));

      await AuthRepository.instance.sendPasswordResetEmail(email.text.trim());

      MyFullScreenLoader.stopLoading();

      MyLoaders.successSnackBar(
        title: "Email Sent",
        message: "Email Sent to Reset your Password".tr,
      );
      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }

  Future<void> resendPasswordResetEmail(String email) async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      MyFullScreenLoader.openLoadingDialog(
        "Proccesing your request ...",
        Assets.images.animations.a141594AnimationOfDocer,
      );

      await Future.delayed(const Duration(seconds: 3));

      await AuthRepository.instance.sendPasswordResetEmail(email);

      MyFullScreenLoader.stopLoading();

      MyLoaders.successSnackBar(
        title: "Email Sent",
        message: "Email Sent to Reset your Password".tr,
      );
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }
}

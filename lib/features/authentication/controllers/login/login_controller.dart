import 'package:ecommerce/data/repositories/authentication/auth_repository.dart';
import 'package:ecommerce/features/personalization/controllers/user_controller.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/helpers/network_manager.dart';
import 'package:ecommerce/utils/popups/full_screen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final userController = Get.put(UserController());
  final localStorage = GetStorage();
  final hidePassword = true.obs;
  final rememberMe = false.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read("REMEMBER_ME_EMAIL") ?? "";
    password.text = localStorage.read("REMEMBER_ME_PASSWORD") ?? "";
    super.onInit();
  }

  Future<void> loginWithEmailAndPassword() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      if (!loginFormKey.currentState!.validate()) return;

      if (rememberMe.value) {
        localStorage.write("REMEMBER_ME_EMAIL", email.text.trim());
        localStorage.write("REMEMBER_ME_PASSWORD", password.text.trim());
      } else {
        localStorage.remove("REMEMBER_ME_EMAIL");
        localStorage.remove("REMEMBER_ME_PASSWORD");
      }

      MyFullScreenLoader.openLoadingDialog(
        "Logging you in ...",
        Assets.images.animations.a141594AnimationOfDocer,
      );

      await Future.delayed(const Duration(seconds: 3));

      await AuthRepository.instance.loginWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());

      MyFullScreenLoader.stopLoading();

      AuthRepository.instance.screenRedirect();
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }

  Future<void> loginWithGoogle() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // final userCredentials =
      await AuthRepository.instance.loginWithGoogle();

      // await userController.saveUserRecord(userCredentials);

      MyFullScreenLoader.openLoadingDialog(
        "Logging you in ...",
        Assets.images.animations.a141594AnimationOfDocer,
      );

      await Future.delayed(const Duration(seconds: 3));

      MyFullScreenLoader.stopLoading();

      AuthRepository.instance.screenRedirect();
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }
}

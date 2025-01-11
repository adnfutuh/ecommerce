import 'package:ecommerce/data/repositories/user/user_repository.dart';
import 'package:ecommerce/features/personalization/controllers/user_controller.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/helpers/network_manager.dart';
import 'package:ecommerce/utils/popups/full_screen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateUserNameController extends GetxController {
  static UpdateUserNameController get instance => Get.find();

  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  final userName = TextEditingController();
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializeName();
    super.onInit();
  }

  Future<void> initializeName() async {
    userName.text = userController.user.value.userName;
  }

  Future<void> updateUserName() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      if (!updateUserNameFormKey.currentState!.validate()) return;

      MyFullScreenLoader.openLoadingDialog(
        "We are updating your information ...",
        Assets.images.animations.a141594AnimationOfDocer,
      );

      await Future.delayed(const Duration(seconds: 3));

      Map<String, dynamic> name = {
        "UserName": userName.text.trim(),
      };

      await userRepository.updateSingleField(name);

      userController.user.value.userName = userName.text.trim();

      MyFullScreenLoader.stopLoading();

      MyLoaders.successSnackBar(
        title: "Congratulations",
        message: "Your user name has been updated.",
      );

      Get.off(() => const ProfileScreen());
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}

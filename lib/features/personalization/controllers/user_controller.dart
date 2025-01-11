import 'package:ecommerce/data/repositories/authentication/auth_repository.dart';
import 'package:ecommerce/data/repositories/user/user_repository.dart';
import 'package:ecommerce/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce/features/personalization/models/user_model.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/re_auth_login_form.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/helpers/network_manager.dart';
import 'package:ecommerce/utils/popups/full_screen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final auth = AuthRepository.instance;
  final profileLoading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());

  final hidePassword = true.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  @override
  onInit() {
    super.onInit();
    fetchUserRecord();
  }

  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final user = await UserRepository.instance.fetchUserDetails();
      this.user(user);
    } catch (e) {
      UserModel.empty();
    } finally {
      profileLoading.value = false;
    }
  }

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final nameParts =
            UserModel.nameParts(userCredential.user?.displayName ?? "");
        final userName =
            UserModel.generateUserName(userCredential.user?.displayName ?? "");
        final user = UserModel(
          id: userCredential.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          userName: userName,
          email: userCredential.user!.email ?? '',
          phoneNumber: userCredential.user!.phoneNumber ?? '',
          profilePicture: userCredential.user!.photoURL ?? '',
        );
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      MyLoaders.warningSnackBar(
          title: "Data not saved",
          message:
              "Something went wrong while saving your information. You can re-save your data in your profile.");
    }
  }

  void deleteAccountWarningPopup() {
    Get.defaultDialog(
      contentPadding: const EdgeInsets.all(16),
      title: "Delete Account",
      middleText:
          "Are you sure you want to delete your account permanently? This action is not reversible and all of your data will be removed permanently.",
      confirm: ElevatedButton(
        onPressed: () async => deleteUserAccount(),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          backgroundColor: Colors.red,
          side: const BorderSide(color: Colors.red),
        ),
        child: const Text("Delete"),
      ),
      cancel: OutlinedButton(
        onPressed: () => Navigator.of(Get.overlayContext!).pop(),
        child: const Text("Cencel"),
      ),
    );
  }

  void deleteUserAccount() async {
    try {
      MyFullScreenLoader.openLoadingDialog(
        "Processing ...",
        Assets.images.animations.a141594AnimationOfDocer,
      );
      final provider =
          auth.authUser?.providerData.map((e) => e.providerId).first ?? '';

      if (provider == 'google.com') {
        await auth.loginWithGoogle();
        await GoogleSignIn().signOut();
        await auth.deleteAccount();

        MyFullScreenLoader.stopLoading();
        Get.offAll(() => const LoginScreen());
      } else if (provider == 'password') {
        MyFullScreenLoader.stopLoading();
        Get.to(() => const ReAuthLoginForm());
      }
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  reAuthenticateEmailAndPasswordUser() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      if (!reAuthFormKey.currentState!.validate()) return;

      MyFullScreenLoader.openLoadingDialog(
        "Processing ...",
        Assets.images.animations.a141594AnimationOfDocer,
      );

      await auth.reAuthenticateEmailAndPasswordUser(
          email: verifyEmail.text.trim(), password: verifyPassword.text.trim());

      await auth.deleteAccount();

      MyFullScreenLoader.stopLoading();

      Get.offAll(() => const LoginScreen());
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}

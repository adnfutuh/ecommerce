import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/images/circular_image.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/features/personalization/controllers/user_controller.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/change_user_name.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: RAppbar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leadingIcon: Icons.arrow_back_ios,
        onPressed: () => Get.off(() => const NavigationMenu()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CircularImage(
                  height: 100,
                  width: 100,
                  image: Assets.images.content.user.path),
              TextButton(
                onPressed: () {},
                child: const Text("Change Profile Picture"),
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 16),
              const SectionHeadling(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: 16),
              ProfileMenu(
                title: "Name",
                value: controller.user.value.fullName,
                onTap: () => Get.to(() => const ChangeName()),
              ),
              ProfileMenu(
                title: "User Name",
                value: controller.user.value.userName,
                onTap: () => Get.to(() => const ChangeUserName()),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SectionHeadling(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(height: 16),
              ProfileMenu(
                title: "User Id",
                value: controller.user.value.id,
                icon: Iconsax.copy_outline,
              ),
              ProfileMenu(title: "E-mail", value: controller.user.value.email),
              ProfileMenu(
                  title: "Phone Number",
                  value: controller.user.value.phoneNumber),
              const ProfileMenu(title: "Gender", value: "Male"),
              const ProfileMenu(title: "Date of Birth", value: "18 April 2007"),
              const Divider(),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () => controller.deleteAccountWarningPopup(),
                  child: const Text(
                    "Delete Account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

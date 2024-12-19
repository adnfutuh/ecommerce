import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/images/circular_image.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppbar(
        title:
            Text("Profile", style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: true,
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
              const ProfileMenu(title: "Name", value: "Rizki Adnan Futuh"),
              const ProfileMenu(title: "User Name", value: "Adnan Progammer"),
              const SizedBox(height: 16),
              const Divider(),
              const SectionHeadling(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(height: 16),
              const ProfileMenu(
                title: "User Id",
                value: "972133",
                icon: Iconsax.copy_outline,
              ),
              const ProfileMenu(
                  title: "E-mail", value: "Support@CodingWithAdnan.com"),
              const ProfileMenu(
                  title: "Phone Number", value: "+62 88888888888"),
              const ProfileMenu(title: "Gender", value: "Male"),
              const ProfileMenu(title: "Date of Birth", value: "18 April 2007"),
            ],
          ),
        ),
      ),
    );
  }
}

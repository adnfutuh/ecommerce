import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/list_tile/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  RAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: MyColors.white),
                    ),
                  ),
                  const UserProfileTile(),
                  const SizedBox(height: 64),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const SectionHeadling(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: 16),
                  const SettingsMenuTile(
                    icon: Iconsax.safe_home_outline,
                    title: "My Address",
                    subtitle: "Set shopping delivery address",
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.shopping_cart_outline,
                    title: "My Cart",
                    subtitle: "Add, remove products and move to checkout",
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.bag_tick_outline,
                    title: "My Orders",
                    subtitle: "In-progress and Completed Orders",
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.bank_outline,
                    title: "Bank Account",
                    subtitle: "Withdraw balance to registered bank account",
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.discount_shape_outline,
                    title: "My Coupons",
                    subtitle: "List of all the discounted coupons",
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.notification_outline,
                    title: "Notifications",
                    subtitle: "Set any kind of notification message",
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.security_card_outline,
                    title: "Account Privacy",
                    subtitle: "Manage data usage and connected account",
                  ),
                  const SizedBox(height: 16),
                  const SectionHeadling(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: 16),
                  const SettingsMenuTile(
                    icon: Iconsax.document_upload_outline,
                    title: "Load Data",
                    subtitle: "Upload Data to your cloud firebase",
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location_outline,
                    title: "Geolocation",
                    subtitle: "Set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user_outline,
                    title: "Safe Mode",
                    subtitle: "Search result is safe for all age",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image_outline,
                    title: "HD Image Quality",
                    subtitle: "Set images quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Logout"),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce/common/widgets/images/circular_image.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(image: Assets.images.content.user.path),
      title: Text(
        'Adnan Progammer',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MyColors.white),
      ),
      subtitle: Text(
        'Support@CodingWithAdnan.com',
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .apply(color: MyColors.white),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
          onPressed: () => Get.to(() => const ProfileScreen()),
          icon: const Icon(
            Iconsax.edit_outline,
            color: MyColors.white,
          )),
    );
  }
}

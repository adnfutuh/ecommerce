import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/login_signup/text_form.dart';
import 'package:ecommerce/features/personalization/controllers/update_name_controller.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/validator/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: RAppbar(
        showBackArrow: true,
        title: Text(
          "Change Name",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Use real name for easy verification, This name will appear on several pages.",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 32),
            Form(
                key: controller.updateUserNameFormKey,
                child: Column(
                  children: [
                    TextForm(
                      controller: controller.firstName,
                      validator: (value) =>
                          MyValidatior.validateEmptyText("First Name", value),
                      icon1: Iconsax.user_outline,
                      text: MyText.firstName,
                    ),
                    TextForm(
                      controller: controller.lastName,
                      validator: (value) =>
                          MyValidatior.validateEmptyText("Last Name", value),
                      icon1: Iconsax.user_outline,
                      text: MyText.lastName,
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => controller.updateName(),
                        child: const Text(MyText.save),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

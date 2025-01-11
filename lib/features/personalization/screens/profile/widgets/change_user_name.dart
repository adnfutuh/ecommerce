import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/common/widgets/login_signup/text_form.dart';
import 'package:ecommerce/features/personalization/controllers/update_user_name_controller.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/validator/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class ChangeUserName extends StatelessWidget {
  const ChangeUserName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateUserNameController());
    return Scaffold(
      appBar: RAppbar(
        showBackArrow: true,
        title: Text(
          "Change User Name",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
            key: controller.updateUserNameFormKey,
            child: Column(
              children: [
                TextForm(
                  controller: controller.userName,
                  validator: (value) =>
                      MyValidatior.validateEmptyText("User Name", value),
                  icon1: Iconsax.user_edit_outline,
                  text: MyText.username,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => controller.updateUserName(),
                    child: const Text(MyText.save),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

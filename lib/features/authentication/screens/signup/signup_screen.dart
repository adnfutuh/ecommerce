import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/login_signup.dart';
import '../../../../utils/utils.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back,
            color: dark ? MyColors.white : MyColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SignupForm(),
              const FormDivider(dividerText: MyText.orSingUpWith),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

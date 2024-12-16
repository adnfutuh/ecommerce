import 'package:flutter/material.dart';

import '../../../../common/widgets/login_signup/login_signup.dart';
import '../../../../utils/utils.dart';
import 'widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 56, 24, 24),
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              FormDivider(dividerText: MyText.orSingInWith),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../generated/assets.gen.dart';
import '../../../../../utils/utils.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: MyHelperFunctions.screenHeight() * 0.2,
          image: dark
              ? AssetImage(Assets.logos.tStoreSplashLogoWhite.path)
              : AssetImage(Assets.logos.tStoreSplashLogoBlack.path),
        ),
        Text(
          MyText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),
        Text(
          MyText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

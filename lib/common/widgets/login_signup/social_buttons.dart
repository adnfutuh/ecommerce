import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class SocialButtons extends StatelessWidget {
  final String img;
  const SocialButtons({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image(
          height: 32,
          width: 32,
          image: AssetImage(img),
        ),
      ),
    );
  }
}

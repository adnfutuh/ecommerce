import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class FormDivider extends StatelessWidget {
  final String dividerText;
  const FormDivider({super.key, required this.dividerText});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? MyColors.darkGrey : MyColors.darkerGrey,
            thickness: 0.5,
            indent: 50,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? MyColors.darkGrey : MyColors.darkerGrey,
            thickness: 0.5,
            indent: 5,
            endIndent: 50,
          ),
        ),
      ],
    );
  }
}

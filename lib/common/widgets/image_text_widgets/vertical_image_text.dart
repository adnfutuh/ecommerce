import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class VerticalImageText extends StatelessWidget {
  final String image, title;
  final void Function()? onTap;

  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: dark ? MyColors.black : MyColors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? MyColors.light : MyColors.dark,
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: dark ? MyColors.dark : MyColors.light,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}

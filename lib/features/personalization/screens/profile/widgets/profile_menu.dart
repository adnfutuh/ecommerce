import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileMenu extends StatelessWidget {
  final String title, value;
  final VoidCallback? onTap;
  final IconData icon;
  const ProfileMenu(
      {super.key,
      required this.title,
      required this.value,
      this.onTap,
      this.icon = Iconsax.arrow_right_3_outline});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child:
                    Text(title, style: Theme.of(context).textTheme.bodySmall)),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.titleSmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(child: Icon(icon, size: 18)),
          ],
        ),
      ),
    );
  }
}

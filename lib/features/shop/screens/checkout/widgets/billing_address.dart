import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:flutter/material.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeadling(title: "Shipping Address", buttonTitle: "Change"),
        Text("Coding With Adnan", style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.phone, size: 16),
            const SizedBox(width: 16),
            Text("+123 456 789", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.location_history, size: 16),
            const SizedBox(width: 16),
            Text(
              "Shouth Liana, Maine 87654, Usa",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BillingAmount extends StatelessWidget {
  const BillingAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("SubTotal", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$256.0", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$0", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$0", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$0", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
      ],
    );
  }
}

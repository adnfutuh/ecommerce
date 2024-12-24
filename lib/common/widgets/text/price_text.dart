import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final String price;
  final String currencySign;
  final bool isLarge;
  final bool lineThrough;
  final int maxLines;
  const PriceText({
    super.key,
    required this.price,
    this.currencySign = '\$',
    this.isLarge = false,
    this.lineThrough = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}

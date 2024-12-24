import 'package:ecommerce/common/widgets/text/product_text.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class RliniearProgrressIndicator extends StatelessWidget {
  final String title;
  final double value;
  const RliniearProgrressIndicator({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ProductTitleText(
              title: title,
              smallSize: true,
            ),
          ),
          Expanded(
            flex: 11,
            child: SizedBox(
              width: double.infinity,
              child: LinearProgressIndicator(
                minHeight: 11,
                value: value,
                valueColor: const AlwaysStoppedAnimation(MyColors.primary),
                backgroundColor: MyColors.grey,
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          )
        ],
      ),
    );
  }
}

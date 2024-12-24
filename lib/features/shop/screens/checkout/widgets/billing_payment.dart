import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:ecommerce/generated/assets.gen.dart';
import 'package:ecommerce/utils/constants/constants.dart';
import 'package:ecommerce/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class BillingPayment extends StatelessWidget {
  const BillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeadling(title: "Payment Method", buttonTitle: "Change"),
        Row(
          children: [
            RoundedContainer(
              height: 35,
              width: 60,
              bgColor: MyHelperFunctions.isDarkMode(context)
                  ? MyColors.light
                  : MyColors.white,
              padding: const EdgeInsets.all(8),
              child: Image(
                image: AssetImage(Assets.icons.paymentMethods.paypal.path),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 8),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}

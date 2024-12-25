import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class RChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  const RChoiceChip(
      {super.key, required this.text, required this.selected, this.onSelected});

  @override
  Widget build(BuildContext context) {
    final isColor = MyHelperFunctions.getColor(text) != null;
    final dark = MyHelperFunctions.isDarkMode(context);
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        selectedColor: MyColors.primary,
        checkmarkColor: Colors.white,
        onSelected: (value) {},
        labelStyle: TextStyle(
          color: selected
              ? MyColors.white
              : dark
                  ? Colors.grey
                  : null,
        ),
        avatar: isColor
            ? CircularContainer(
                height: 50,
                width: 50,
                bgColor: MyHelperFunctions.getColor(text)!,
              )
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        side: isColor ? const BorderSide(color: MyColors.white) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? MyHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final IconData icon1;
  final String text;
  final Icon icon2;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function()? onPressed;
  const TextForm(
      {super.key,
      required this.icon1,
      required this.text,
      this.icon2 = const Icon(null),
      this.controller,
      this.validator,
      this.obscureText = false,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon1),
          labelText: text,
          suffixIcon: IconButton(onPressed: onPressed, icon: icon2),
        ),
      ),
    );
  }
}

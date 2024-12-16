import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final IconData icon1;
  final String text;
  final IconData? icon2;
  const TextForm(
      {super.key, required this.icon1, required this.text, this.icon2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon1),
          labelText: text,
          suffixIcon: Icon(icon2),
        ),
      ),
    );
  }
}

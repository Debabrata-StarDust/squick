import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm(
      {super.key,
      required this.hintTextName,
      // required this.labelName,
      required this.nameController,
      required this.obScureText});
  final TextEditingController nameController;
  // final String labelName;
  final String hintTextName;
  final bool obScureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obScureText,
      controller: nameController,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 3),
        ),
        hintText: hintTextName,
        // labelText: labelName,
      ),
    );
  }
}

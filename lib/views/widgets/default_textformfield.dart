import 'package:flutter/material.dart';

class DefaultTFF extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function validator;
  Function? onFieldSubmitted;
  bool isPassword = false;
  Function? suffixPressed;

  DefaultTFF(
      {Key? key,
      required this.labelText,
      required this.keyboardType,
      required this.controller,
      required this.isPassword,
      required this.validator,
      required this.onFieldSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.0),
          ),
          labelText: labelText),
      validator: (value) {
        return validator(value);
      },
      onFieldSubmitted: (value) {
        onFieldSubmitted!(value);
      },
    );
  }
}

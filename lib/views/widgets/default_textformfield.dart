import 'package:flutter/material.dart';

class DefaultTFF extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function validator;
  Function? onFieldSubmitted;
  bool isPassword = false;
  Function? suffixPressed;
  FocusNode? focusNode;

  DefaultTFF(
      {Key? key,
      required this.labelText,
      this.focusNode,
      required this.keyboardType,
      required this.controller,
      required this.isPassword,
      required this.validator,
      this.onFieldSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: keyboardType,
      focusNode: focusNode,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.0),
          ),
          labelText: labelText),
      validator: (value) {
        return validator(value);
      },
      onFieldSubmitted: (value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted!(value);
        }
      },
    );
  }
}

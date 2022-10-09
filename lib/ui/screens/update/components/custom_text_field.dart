import 'package:flutter/material.dart';
import 'package:storeapp/ui/shared/consts.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.hintText,
      this.inputType,
      this.onChanged,
      this.obscureText = false});

  Function(String)? onChanged;
  String? hintText;
  TextInputType? inputType;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: defaultPadding_16),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(defaultPadding_16),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(defaultPadding_16),
        ),
      ),
    );
  }
}

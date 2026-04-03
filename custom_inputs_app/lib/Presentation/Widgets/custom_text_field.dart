import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  // Global variables
  String hintText;
  TextEditingController controller;
  Widget? lable;
  String? Function(String?)? validator;
  Icon? prefixIcon;
  IconButton? suffixIcon;
  bool obscureText;
  List<TextInputFormatter>? inputFormatters;
  TextInputType? keyboardType;
  TextAlign textAlign;
  void Function(String)? onChanged;
  double borderRadius;
  // Constructor
  CustomTextField({
    super.key,
    this.obscureText = false,
    this.hintText = '',
    required this.controller,
    this.prefixIcon,
    this.lable,
    this.suffixIcon,
    this.validator,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      textAlign: textAlign,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        label: lable,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(borderRadius),
          borderSide: BorderSide(width: 2),
        ),
      ),
    );
  }
}

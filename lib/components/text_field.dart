import 'package:ecommerce_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldComponent extends StatefulWidget {
  final bool isPassword;
  final String labelText;
  final String hintText;
  final IconData? icon;

  const TextFieldComponent(
      {super.key,
      this.isPassword = false,
      required this.labelText,
      required this.hintText,
      this.icon});

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.labelText.toUpperCase(),
            style:
                TextStyle(color: AppColors.white, fontWeight: FontWeight.bold)),
        TextField(
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            hintText: widget.hintText,
            prefixIcon: widget.icon != null
                ? Icon(widget.icon, color: AppColors.primary)
                : null,
          ),
        ),
      ],
    );
  }
}

import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label, hintText;
  final bool obsecureText;
  const CustomFormField({
    Key? key,
    required this.label,
    required this.hintText,
    this.obsecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 6),
          TextFormField(
            cursorColor: ThemeManager.blackColor,
            obscureText: obsecureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeManager.defaulRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeManager.defaulRadius),
                borderSide: const BorderSide(color: ThemeManager.primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

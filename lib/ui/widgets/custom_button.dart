import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final double buttonWidth;
  final Function() onPress;
  final EdgeInsets margin;

  const CustomButton({
    Key? key,
    required this.buttonText,
    this.buttonWidth = double.infinity,
    this.margin = EdgeInsets.zero,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: buttonWidth,
      height: 55,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          backgroundColor: ThemeManager.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ThemeManager.defaulRadius),
          ),
        ),
        child: Text(
          buttonText,
          style: ThemeManager.whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: ThemeManager.medium,
          ),
        ),
      ),
    );
  }
}

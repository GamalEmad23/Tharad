import 'package:flutter/material.dart';
import 'package:tharad/core/themes/color/app_colors.dart';

class CustomeText extends StatelessWidget {
  CustomeText({
    super.key,
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  });

  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor ?? AppColors.black,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}

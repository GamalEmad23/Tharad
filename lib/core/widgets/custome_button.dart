import 'package:flutter/material.dart';
import 'package:tharad/core/themes/color/app_colors.dart';
import 'package:tharad/core/widgets/custome_text.dart';

class CustomeButton extends StatelessWidget {
  CustomeButton({
    super.key,
    required this.height,
    required this.width,
    required this.btnText,
  });

  final double height;
  final double width;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDark],
        ),
        borderRadius: BorderRadius.circular(15),
      ),

      child: Center(
        child: CustomeText(
          text: btnText,
          textColor: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

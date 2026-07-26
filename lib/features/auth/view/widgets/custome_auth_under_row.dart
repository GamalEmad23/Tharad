import 'package:flutter/material.dart';
import 'package:tharad/core/themes/color/app_colors.dart';
import 'package:tharad/core/widgets/custome_text.dart';

class CustomeAuthUnderRow extends StatelessWidget {
  CustomeAuthUnderRow({
    super.key,
    required this.primaryText,
    required this.secondarText,
    this.onTap,
  });

  final String primaryText;
  final String secondarText;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        CustomeText(text: primaryText, fontWeight: FontWeight.bold),
        GestureDetector(
          onTap: onTap,
          child: CustomeText(
            text: secondarText,
            textColor: AppColors.primaryDark,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

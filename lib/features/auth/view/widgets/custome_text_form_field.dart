// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tharad/core/themes/color/app_colors.dart';

class CustomeTextFormField extends StatefulWidget {
  CustomeTextFormField({
    super.key,
    required this.hintText,
    this.sec,
    this.isPass,
  });

  final String hintText;
  bool? sec;
  final bool? isPass;

  @override
  State<CustomeTextFormField> createState() => _CustomeTextFormFieldState();
}

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 9),
      child: TextFormField(
        obscureText: widget.sec ?? false,
        decoration: InputDecoration(
          suffixIcon: widget.isPass == true
              ? IconButton(
                  onPressed: () {
                    widget.sec = !widget.sec!;
                    setState(() {});
                  },
                  icon: widget.sec!
                      ? Icon(Icons.remove_red_eye)
                      : Icon(Icons.remove_red_eye_outlined),
                )
              : null,

          hint: Text(
            widget.hintText,
            style: TextStyle(color: AppColors.textSecondary),
          ),
          filled: true,
          fillColor: Color.fromARGB(46, 114, 201, 186),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.hint),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.hint),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.whiteGray),
          ),
        ),
      ),
    );
  }
}

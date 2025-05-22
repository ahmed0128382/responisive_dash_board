import 'package:flutter/material.dart';
import 'package:ui_app/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, this.backgroundColor, this.textColor});
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xff4db7f2),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: AppStyles.styleSemiBold16.copyWith(
              color: textColor ?? Colors.white,
            ),
          )),
    );
  }
}

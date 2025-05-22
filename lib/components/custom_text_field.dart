import 'package:flutter/material.dart';
import 'package:ui_app/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    var buildBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Color(0xfffafafa),
      ),
    );
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: Color(0xffaaaaaa),
        ),
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: buildBorder,
        enabledBorder: buildBorder,
        focusedBorder: buildBorder,
      ),
    );
  }
}

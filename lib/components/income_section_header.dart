import 'package:flutter/material.dart';
import 'package:ui_app/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color(0xfff1f1f1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              SizedBox(
                width: 18,
              ),
              Transform.rotate(
                angle: -(3.14 / 2),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xff064061),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_app/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
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

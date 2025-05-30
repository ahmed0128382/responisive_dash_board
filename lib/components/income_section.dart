import 'package:flutter/material.dart';
import 'package:ui_app/components/custom_background_container.dart';
import 'package:ui_app/utils/app_styles.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const Text(
            'Income',
            style: AppStyles.styleSemiBold20,
          ),
          Container(
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
                  style: AppStyles.styleMedium16.copyWith(
                    color: Color(0xff064060),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

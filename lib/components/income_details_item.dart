import 'package:flutter/material.dart';
import 'package:ui_app/core/helper/responsive_font.dart';
import 'package:ui_app/models/income_details_item_model.dart';
import 'package:ui_app/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});

  final IncomeDetailsItemModel incomeDetailsItemModel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = getResponsiveFontSize(constraints, fontSize: 16);

        return ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: incomeDetailsItemModel.color,
            ),
          ),
          title: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            incomeDetailsItemModel.title,
            style: AppStyles.styleRegular16.copyWith(
              fontSize: fontSize,
              color: const Color(0xff064060),
            ),
          ),
          trailing: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            incomeDetailsItemModel.value,
            style: AppStyles.styleMedium16.copyWith(
              fontSize: fontSize,
              color: const Color(0xff208cc8),
            ),
          ),
        );
      },
    );
  }
}

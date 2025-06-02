import 'package:flutter/material.dart';
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

double getResponsiveFontSize(BoxConstraints constraints,
    {required double fontSize}) {
  double scaleFactor = getScaleFactor(constraints); // Use parent constraints
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BoxConstraints constraints) {
  double width = constraints.maxWidth; // Parent widget width
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}

import 'package:flutter/material.dart';
import 'package:ui_app/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          width: 48,
          height: 48,
          decoration:
              ShapeDecoration(color: Color(0xfffafafa), shape: OvalBorder()),
          child: Icon(
            Icons.add,
            color: Color(0xff4eb7f2),
          ),
        )
      ],
    );
  }
}

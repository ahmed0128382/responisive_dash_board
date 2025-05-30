import 'package:flutter/material.dart';
import 'package:ui_app/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          'see all',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_app/components/latest_transaction_list_view.dart';
import 'package:ui_app/utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 16,
        ),
        LatestTransactionListView(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_app/components/transaction_history_header.dart';
import 'package:ui_app/components/transaction_history_list_view.dart';
import 'package:ui_app/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2025',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xffaaaaaa),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}

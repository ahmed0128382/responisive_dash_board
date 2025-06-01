import 'package:flutter/material.dart';
import 'package:ui_app/components/transaction_item.dart';
import 'package:ui_app/models/transaction_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> transactions = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 April 2025',
        amount: r'$20,129',
        isWithdarwal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 April 2025 at 3:30 PM',
        amount: r'$2,000',
        isWithdarwal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 April 2025 at 3:30 PM',
        amount: r'$20,129',
        isWithdarwal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: transactions[index]);
        //print(transactions[index]);
      },
    );
  }
}

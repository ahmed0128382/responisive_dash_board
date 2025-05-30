import 'package:flutter/material.dart';
import 'package:ui_app/models/transaction_model.dart';
import 'package:ui_app/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: const Color(0xfffafafa),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            transactionModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            transactionModel.date,
            style: AppStyles.styleRegular16.copyWith(
              color: Color(0xffaaaaaa),
            ),
          ),
          trailing: Text(
            transactionModel.amount,
            style: AppStyles.styleSemiBold20.copyWith(
              color: transactionModel.isWithdarwal
                  ? Color(0xfff3735e)
                  : Color(0xff7cd87a),
            ),
          ),
        ));
  }
}

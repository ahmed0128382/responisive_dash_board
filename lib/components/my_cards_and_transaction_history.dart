import 'package:flutter/material.dart';
import 'package:ui_app/components/custom_background_container.dart';
import 'package:ui_app/components/income_section.dart';
import 'package:ui_app/components/my_cards_section.dart';
import 'package:ui_app/components/transaction_history.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardsSection(),
        Divider(
          height: 40,
          color: const Color(0xfff1f1f1),
        ),
        TransactionHistory(),
      ],
    ));
  }
}

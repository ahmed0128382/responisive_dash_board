import 'package:flutter/material.dart';
import 'package:ui_app/components/all_expenses_and_quick_invoice_section.dart';
import 'package:ui_app/components/income_section.dart';
import 'package:ui_app/components/my_cards_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardsAndTransactionHistory(),
          IncomeSection(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_app/components/all_expenses_and_quick_invoice_section.dart';
import 'package:ui_app/components/custom_drawer.dart';
import 'package:ui_app/components/income_section.dart';
import 'package:ui_app/components/my_cards_and_transaction_history.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Drawer section
        Expanded(child: CustomDrawer()),

        const SizedBox(width: 24),

        /// Main content (Expenses & Quick Invoice)
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                MyCardsAndTransactionHistory(),
                IncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

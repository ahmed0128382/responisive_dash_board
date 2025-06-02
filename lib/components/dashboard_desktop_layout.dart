import 'package:flutter/material.dart';
import 'package:ui_app/components/all_expenses_and_quick_invoice_section.dart';
import 'package:ui_app/components/custom_drawer.dart';
import 'package:ui_app/components/income_section.dart';
import 'package:ui_app/components/my_cards_and_transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Drawer section
        Expanded(child: CustomDrawer()),

        const SizedBox(width: 32),

        /// Main content (Expenses & Quick Invoice)
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),

        const SizedBox(width: 24),

        /// Right section (Cards, History, Income)
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCardsAndTransactionHistory(),
                //const SizedBox(height: 24),
                SizedBox(
                  height:
                      250, // You can also use MediaQuery if you want it responsive
                  child: IncomeSection(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

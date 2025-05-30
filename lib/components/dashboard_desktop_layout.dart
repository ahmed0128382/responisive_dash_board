import 'package:flutter/material.dart';
import 'package:ui_app/components/all_expenses_and_quick_invoice_section.dart';
import 'package:ui_app/components/custom_drawer.dart';
import 'package:ui_app/components/my_card.dart';
import 'package:ui_app/components/my_cards_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: MyCardsSection()),
      ],
    );
  }
}

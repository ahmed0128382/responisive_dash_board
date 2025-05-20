import 'package:flutter/material.dart';
import 'package:ui_app/components/all_expenses.dart';
import 'package:ui_app/components/custom_drawer.dart';

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
            child: Column(
              children: [
                Expanded(child: AllExpenses()),
              ],
            )),
      ],
    );
  }
}

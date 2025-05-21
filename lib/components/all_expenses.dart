import 'package:flutter/material.dart';
import 'package:ui_app/components/all_expenses_header.dart';
import 'package:ui_app/components/all_expensive_items_list.dart';
import 'package:ui_app/components/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          AllExpensiveItemsListView(),
        ],
      ),
    );
  }
}

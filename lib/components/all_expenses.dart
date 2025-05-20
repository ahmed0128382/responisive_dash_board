import 'package:flutter/material.dart';
import 'package:ui_app/components/all_expenses_header.dart';
import 'package:ui_app/components/all_expenses_item.dart';
import 'package:ui_app/models/all_expnses_item_model.dart';
import 'package:ui_app/utils/app_images.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          AllExpensesItem(
            itemModel: AllExpnsesItemModel(
                image: AppImages.imagesCardReceive,
                title: 'Income',
                date: 'May 2025',
                price: r'$20,129'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_app/components/all_expenses_item.dart';
import 'package:ui_app/models/all_expnses_item_model.dart';
import 'package:ui_app/utils/app_images.dart';

class AllExpensiveItemsListView extends StatefulWidget {
  const AllExpensiveItemsListView({super.key});

  @override
  State<AllExpensiveItemsListView> createState() =>
      _AllExpensiveItemsListViewState();
}

class _AllExpensiveItemsListViewState extends State<AllExpensiveItemsListView> {
  int selectedIndex = 0;
  final items = [
    AllExpnsesItemModel(
        image: AppImages.imagesMoneys,
        title: 'Balance',
        date: 'April 2025',
        price: r'$20,129'),
    AllExpnsesItemModel(
        image: AppImages.imagesCardReceive,
        title: 'Income',
        date: 'April 2025',
        price: r'$20,129'),
    AllExpnsesItemModel(
        image: AppImages.imagesCardSend,
        title: 'Expenses',
        date: 'April 2025',
        price: r'$20,129')
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      //     .toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                    isActive: selectedIndex == index, itemModel: item),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AllExpensesItem(
                  isActive: selectedIndex == index, itemModel: item),
            ),
          );
        }
      }).toList(),
    );
  }
}

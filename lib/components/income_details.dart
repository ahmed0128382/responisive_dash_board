import 'package:flutter/material.dart';
import 'package:ui_app/components/income_details_item.dart';
import 'package:ui_app/models/income_details_item_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailsItemModel(
        color: Color(0xff208bc7), title: 'Design service', value: '40%'),
    IncomeDetailsItemModel(
        color: Color(0xff4db7f2), title: 'Design product', value: '25%'),
    IncomeDetailsItemModel(
        color: Color(0xff064060), title: 'Product royalti', value: '20%'),
    IncomeDetailsItemModel(
        color: Color(0xffe2decd), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(incomeDetailsItemModel: items[index]);
      },
    );
  }
}

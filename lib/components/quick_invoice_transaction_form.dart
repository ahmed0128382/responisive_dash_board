import 'package:flutter/material.dart';
import 'package:ui_app/components/custom_button.dart';
import 'package:ui_app/components/title_text_field.dart';

class QuickInvoiceTransactionForm extends StatelessWidget {
  const QuickInvoiceTransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer name', hint: 'Type Customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type Customer Email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child:
                    TitleTextField(title: 'Item name', hint: 'Type Item name')),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(child: CustomButton(title: 'Add more details')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomButton(
              title: 'Send Money',
            )),
          ],
        )
      ],
    );
  }
}

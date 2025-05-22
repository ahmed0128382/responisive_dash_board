import 'package:flutter/material.dart';
import 'package:ui_app/components/custom_background_container.dart';
import 'package:ui_app/components/latest_transaction.dart';
import 'package:ui_app/components/quick_invoice_header.dart';
import 'package:ui_app/components/quick_invoice_transaction_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 8,
        ),
        LatestTransaction(),
        Divider(
          height: 48,
          color: Color(0xfff1f1f1),
        ),
        QuickInvoiceTransactionForm(),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:ui_app/components/custom_background_container.dart';
import 'package:ui_app/components/income_chart.dart';
import 'package:ui_app/components/income_details.dart';
import 'package:ui_app/components/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              IncomeSectionHeader(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 28.0),
                        child: IncomeChart(),
                      )),
                  Expanded(flex: 2, child: IncomeDetails()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

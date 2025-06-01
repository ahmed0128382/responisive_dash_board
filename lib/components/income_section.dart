import 'package:flutter/material.dart';
import 'package:ui_app/components/custom_background_container.dart';
import 'package:ui_app/components/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [IncomeSectionHeader()],
      ),
    );
  }
}

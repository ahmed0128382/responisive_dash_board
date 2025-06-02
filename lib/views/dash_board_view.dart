import 'package:flutter/material.dart';
import 'package:ui_app/components/adaptive_layout.dart';
import 'package:ui_app/components/dashboard_desktop_layout.dart';
import 'package:ui_app/components/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: AdaptiveLayout(
          desktopLayout: (context) => const DashboardDesktopLayout(),
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const DashboardTabletLayout()),
    );
  }
}

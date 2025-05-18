import 'package:flutter/material.dart';
import 'package:ui_app/components/adaptive_layout.dart';
import 'package:ui_app/components/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          desktopLayout: (context) => SizedBox(),
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => DashboardDesktopLayout()),
    );
  }
}

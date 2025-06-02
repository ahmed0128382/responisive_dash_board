import 'package:flutter/material.dart';
import 'package:ui_app/components/adaptive_layout.dart';
import 'package:ui_app/components/custom_drawer.dart';
import 'package:ui_app/components/dashboard_desktop_layout.dart';
import 'package:ui_app/components/dashboard_mobile_layout.dart';
import 'package:ui_app/components/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: true,
      drawer: CustomDrawer(),
      appBar: MediaQuery.of(context).size.width <= 700
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xfffafafa),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: Color(0xfff7f9fa),
      body: AdaptiveLayout(
          desktopLayout: (context) => const DashboardDesktopLayout(),
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout()),
    );
  }
}

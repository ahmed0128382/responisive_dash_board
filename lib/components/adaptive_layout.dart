import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.desktopLayout,
      required this.mobileLayout,
      required this.tabletLayout});
  final WidgetBuilder desktopLayout, tabletLayout, mobileLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //print('layout builder Constraints.maxWidth : ${Constraints.maxWidth}');
      if (constraints.maxWidth > 1250) {
        return desktopLayout(context);
      } else if (constraints.maxWidth > 700) {
        return tabletLayout(context);
      } else {
        return mobileLayout(context);
      }
    });
  }
}

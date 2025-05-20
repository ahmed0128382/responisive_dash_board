import 'package:flutter/material.dart';
import 'package:ui_app/components/drawer_item.dart';
import 'package:ui_app/models/drawer_item_model.dart';
import 'package:ui_app/utils/app_images.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'DashBoard',
      image: AppImages.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: AppImages.imagesTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: AppImages.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: AppImages.imagesWallet,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: AppImages.imagesInvestment,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}

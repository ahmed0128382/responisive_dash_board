import 'package:flutter/material.dart';
import 'package:ui_app/components/drawer_item.dart';
import 'package:ui_app/components/user_info_list_tile.dart';
import 'package:ui_app/models/drawer_item_model.dart';
import 'package:ui_app/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
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
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
              image: AppImages.imagesFrame,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com'),
          SizedBox(
            height: 8,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: DrawerItem(drawerItemModel: items[index]),
                );
              })
        ],
      ),
    );
  }
}

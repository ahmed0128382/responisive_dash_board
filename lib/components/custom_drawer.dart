import 'package:flutter/material.dart';

import 'package:ui_app/components/drawer_items_list_view.dart';
import 'package:ui_app/components/user_info_list_tile.dart';
import 'package:ui_app/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
          DrawerItemsListView(),
        ],
      ),
    );
  }
}

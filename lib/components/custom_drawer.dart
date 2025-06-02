import 'package:flutter/material.dart';
import 'package:ui_app/components/drawer_item.dart';

import 'package:ui_app/components/drawer_items_list_view.dart';
import 'package:ui_app/components/user_info_list_tile.dart';
import 'package:ui_app/models/drawer_item_model.dart';
import 'package:ui_app/models/user_info_model.dart';
import 'package:ui_app/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: AppImages.imagesFrame,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: Spacer(
                // height: 8,
                ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', image: AppImages.imagesSettings),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout Account', image: AppImages.imagesLogout),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

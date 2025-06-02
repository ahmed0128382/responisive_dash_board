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
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth * 0.7,
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            /// User Info Tile
            SliverToBoxAdapter(
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  image: AppImages.imagesFrame,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com',
                ),
              ),
            ),

            /// Optional spacing instead of Spacer
            const SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),

            /// Drawer Items List
            DrawerItemsListView(),

            /// Bottom Section with Settings & Logout
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Setting system',
                      image: AppImages.imagesSettings,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Logout Account',
                      image: AppImages.imagesLogout,
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

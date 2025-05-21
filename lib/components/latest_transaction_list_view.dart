import 'package:flutter/material.dart';
import 'package:ui_app/components/user_info_list_tile.dart';
import 'package:ui_app/models/user_info_model.dart';
import 'package:ui_app/utils/app_images.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: AppImages.imagesFrame,
        title: 'Madrani Andi',
        subTitle: 'madraniandi20@gmail.com'),
    UserInfoModel(
        image: AppImages.imagesFrame2,
        title: 'Madrani Andi',
        subTitle: 'madraniandi20@gmail.com'),
    UserInfoModel(
        image: AppImages.imagesFrame,
        title: 'Madrani Andi',
        subTitle: 'madraniandi20@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfoListTile(
                userInfoModel: items[index],
              ),
            );
          }),
    );
  }
}

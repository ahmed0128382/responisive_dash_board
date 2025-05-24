import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_app/utils/app_images.dart';
import 'package:ui_app/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.imagesCardBackgrounPng),
          ),
          color: const Color(0xff4eb7f2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                left: 31,
                right: 42,
                top: 16,
              ),
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16.copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                'Ahmed Ibrahim Abomousa',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(AppImages.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                children: [
                  Text(
                    '0000 0000 0000 0000',
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 54 - 28,
            ),
          ],
        ),
      ),
    );
  }
}

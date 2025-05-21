import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imgBackgroundClr, this.imgClr});
  final String image;
  final Color? imgBackgroundClr, imgClr;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 60,
            height: 60,
            decoration: ShapeDecoration(
                color: imgBackgroundClr ?? Color(0xfffafafa),
                shape: OvalBorder()),
            child: Center(
                child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  imgClr ?? Color(0xff4eb7f2), BlendMode.srcIn),
            ))),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: imgClr == null ? Color(0xff064061) : Colors.white,
        ),
      ],
    );
  }
}

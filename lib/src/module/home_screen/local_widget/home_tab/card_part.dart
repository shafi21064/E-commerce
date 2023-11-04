import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home_package.dart';


class CardPart extends StatelessWidget {
  final Color startColor, endColor ;
  final String imgPath, cardName;
  const CardPart({
    super.key,
    required this.cardName,
    required this.imgPath,
    required this.startColor,
    required this.endColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 77.h,
          width: 83.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    startColor,
                    endColor,
                  ]),
              borderRadius: BorderRadius.circular(10.r)
          ),
          child: Image.asset(imgPath,),
        ),
        SpaceInHeight(height: 9.h),
        TextMedium(
          text: cardName,
          color: const Color(0xff434343),
          fontSize: 11.sp,
        )
      ],
    );
  }
}

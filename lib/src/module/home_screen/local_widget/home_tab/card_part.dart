import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/cards_part_item.dart';

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

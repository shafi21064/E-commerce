import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';

class DailyFeature extends StatelessWidget {
  final String imgPath, cardName;
  const DailyFeature({
    super.key,
    required this.imgPath,
    required this.cardName
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 83.h,
          width: 83.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            color: Colors.white
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      height: 155.h,
      //color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextMedium(
                  text: '500.00 SAR',
                  fontSize: 21.sp,
                color: CustomColor.primaryColor,
              ),
              Icon(Icons.share, color: Colors.black,)
            ],
          ),
          Row(
            children: [
              Text(
                '46,0000.00XAF',
                style: TextStyle(
                  fontFamily: 'RobotoMedium',
                  fontSize: 16.sp,
                  color: Color(0xffCBCBCB),
                  decoration: TextDecoration.lineThrough
                ),
              ),
              SpaceInWidth(width: 18.w),
              Text(
                '-46%',
                style: TextStyle(
                    fontFamily: 'RobotoMedium',
                    fontSize: 16.sp,
                    color: Color(0xff868686),
                ),
              ),
            ],
          ),
          SpaceInHeight(height: 13.h),
          TextMedium(
              text: "Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.",
              fontSize: 16.sp,
            color: Color(0xff333333),
          ),
          SpaceInHeight(height: 12.h),
          Row(
            children: [
              Image.asset('assets/icons/review.png'),
              SpaceInWidth(width: 8.w),
              TextMedium(
                  text: '4.6',
                  fontSize: 16.sp,
                color: Color(0xff868686),
              )
            ],
          )
        ],
      ),
    );
  }
}
